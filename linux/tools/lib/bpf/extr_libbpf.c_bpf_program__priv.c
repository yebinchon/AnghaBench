
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {void* priv; } ;


 int EINVAL ;
 void* ERR_PTR (int ) ;

void *bpf_program__priv(const struct bpf_program *prog)
{
 return prog ? prog->priv : ERR_PTR(-EINVAL);
}
