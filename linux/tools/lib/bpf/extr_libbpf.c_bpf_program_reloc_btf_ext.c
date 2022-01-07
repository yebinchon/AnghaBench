
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int line_info_rec_size; int line_info; int line_info_cnt; int func_info_rec_size; int func_info; int func_info_cnt; } ;
struct bpf_object {int btf_ext; int btf; } ;
typedef int __u32 ;


 int btf_ext__func_info_rec_size (int ) ;
 int btf_ext__line_info_rec_size (int ) ;
 int btf_ext__reloc_func_info (int ,int ,char const*,int ,int *,int *) ;
 int btf_ext__reloc_line_info (int ,int ,char const*,int ,int *,int *) ;
 int check_btf_ext_reloc_err (struct bpf_program*,int,int ,char*) ;

__attribute__((used)) static int
bpf_program_reloc_btf_ext(struct bpf_program *prog, struct bpf_object *obj,
     const char *section_name, __u32 insn_offset)
{
 int err;

 if (!insn_offset || prog->func_info) {






  err = btf_ext__reloc_func_info(obj->btf, obj->btf_ext,
            section_name, insn_offset,
            &prog->func_info,
            &prog->func_info_cnt);
  if (err)
   return check_btf_ext_reloc_err(prog, err,
             prog->func_info,
             "bpf_func_info");

  prog->func_info_rec_size = btf_ext__func_info_rec_size(obj->btf_ext);
 }

 if (!insn_offset || prog->line_info) {
  err = btf_ext__reloc_line_info(obj->btf, obj->btf_ext,
            section_name, insn_offset,
            &prog->line_info,
            &prog->line_info_cnt);
  if (err)
   return check_btf_ext_reloc_err(prog, err,
             prog->line_info,
             "bpf_line_info");

  prog->line_info_rec_size = btf_ext__line_info_rec_size(obj->btf_ext);
 }

 return 0;
}
