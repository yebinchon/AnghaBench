
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int section_name; } ;
typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;
typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;


 int libbpf_prog_type_by_name (int ,int*,int*) ;

__attribute__((used)) static int
bpf_program__identify_section(struct bpf_program *prog,
         enum bpf_prog_type *prog_type,
         enum bpf_attach_type *expected_attach_type)
{
 return libbpf_prog_type_by_name(prog->section_name, prog_type,
     expected_attach_type);
}
