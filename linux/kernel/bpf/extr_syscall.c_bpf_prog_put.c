
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;


 int __bpf_prog_put (struct bpf_prog*,int) ;

void bpf_prog_put(struct bpf_prog *prog)
{
 __bpf_prog_put(prog, 1);
}
