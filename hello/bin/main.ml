open Js_of_ocaml

let onload _ =
  let text_body =
    (Js.Opt.get @@ Dom_html.window##.document##getElementById (Js.string "text-body")) (fun () -> assert false)
  in
  text_body##.innerText := Js.string "Hello, JSOO!";
  Js._false


let () =
  Dom_html.window##.onload := Dom_html.handler onload
