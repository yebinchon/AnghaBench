
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int bpf_func; } ;


 int bpf_prog_offload_translate (struct bpf_prog*) ;
 int bpf_prog_warn_on_exec ;

int bpf_prog_offload_compile(struct bpf_prog *prog)
{
 prog->bpf_func = bpf_prog_warn_on_exec;

 return bpf_prog_offload_translate(prog);
}
