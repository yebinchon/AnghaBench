
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_dumper {int is_plain_text; int * jw; struct btf* btf; } ;
struct btf {int dummy; } ;
struct bpf_map_info {int btf_id; } ;
typedef int json_writer_t ;


 int btf__free (struct btf*) ;
 int btf__get_from_id (int ,struct btf**) ;
 int do_dump_btf (struct btf_dumper*,struct bpf_map_info*,void*,void*) ;
 int * get_btf_writer () ;
 scalar_t__ json_output ;
 int jsonw_destroy (int **) ;
 int p_err (char*) ;
 int p_info (char*) ;
 int print_entry_json (struct bpf_map_info*,void*,void*,struct btf*) ;
 int print_entry_plain (struct bpf_map_info*,void*,void*) ;

__attribute__((used)) static void print_key_value(struct bpf_map_info *info, void *key,
       void *value)
{
 json_writer_t *btf_wtr;
 struct btf *btf = ((void*)0);
 int err;

 err = btf__get_from_id(info->btf_id, &btf);
 if (err) {
  p_err("failed to get btf");
  return;
 }

 if (json_output) {
  print_entry_json(info, key, value, btf);
 } else if (btf) {



  btf_wtr = get_btf_writer();
  if (!btf_wtr) {
   p_info("failed to create json writer for btf. falling back to plain output");
   btf__free(btf);
   btf = ((void*)0);
   print_entry_plain(info, key, value);
  } else {
   struct btf_dumper d = {
    .btf = btf,
    .jw = btf_wtr,
    .is_plain_text = 1,
   };

   do_dump_btf(&d, info, key, value);
   jsonw_destroy(&btf_wtr);
  }
 } else {
  print_entry_plain(info, key, value);
 }
 btf__free(btf);
}
