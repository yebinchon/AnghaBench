
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bpf_verifier_env {int subprog_cnt; TYPE_1__* subprog_info; } ;
struct TYPE_2__ {int start; } ;



__attribute__((used)) static void adjust_subprog_starts(struct bpf_verifier_env *env, u32 off, u32 len)
{
 int i;

 if (len == 1)
  return;

 for (i = 0; i <= env->subprog_cnt; i++) {
  if (env->subprog_info[i].start <= off)
   continue;
  env->subprog_info[i].start += len - 1;
 }
}
