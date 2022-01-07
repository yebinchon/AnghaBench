
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int type; } ;
typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;



void bpf_program__set_type(struct bpf_program *prog, enum bpf_prog_type type)
{
 prog->type = type;
}
