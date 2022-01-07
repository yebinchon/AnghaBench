
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct bpf_verifier_env {TYPE_1__* subprog_info; } ;
struct bpf_func_state {size_t subprogno; } ;
struct TYPE_2__ {int stack_depth; } ;



__attribute__((used)) static int update_stack_depth(struct bpf_verifier_env *env,
         const struct bpf_func_state *func,
         int off)
{
 u16 stack = env->subprog_info[func->subprogno].stack_depth;

 if (stack >= -off)
  return 0;


 env->subprog_info[func->subprogno].stack_depth = -off;
 return 0;
}
