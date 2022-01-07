
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bpf_verifier_env {TYPE_1__* prog; } ;
struct TYPE_2__ {int len; } ;



__attribute__((used)) static u32 state_htab_size(struct bpf_verifier_env *env)
{
 return env->prog->len;
}
