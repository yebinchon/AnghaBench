
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct btf_verifier_env {int top_stack; TYPE_1__* stack; } ;
struct TYPE_2__ {int next_member; } ;



__attribute__((used)) static void env_stack_set_next_member(struct btf_verifier_env *env,
          u16 next_member)
{
 env->stack[env->top_stack - 1].next_member = next_member;
}
