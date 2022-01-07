
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;


 struct bpf_prog* bpf_prog_add (struct bpf_prog*,int) ;

struct bpf_prog *bpf_prog_inc(struct bpf_prog *prog)
{
 return bpf_prog_add(prog, 1);
}
