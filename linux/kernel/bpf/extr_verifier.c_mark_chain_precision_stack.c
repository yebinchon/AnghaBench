
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_env {int dummy; } ;


 int __mark_chain_precision (struct bpf_verifier_env*,int,int) ;

__attribute__((used)) static int mark_chain_precision_stack(struct bpf_verifier_env *env, int spi)
{
 return __mark_chain_precision(env, -1, spi);
}
