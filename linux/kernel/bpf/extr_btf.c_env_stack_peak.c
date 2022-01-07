
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resolve_vertex {int dummy; } ;
struct btf_verifier_env {int top_stack; struct resolve_vertex const* stack; } ;



__attribute__((used)) static const struct resolve_vertex *env_stack_peak(struct btf_verifier_env *env)
{
 return env->top_stack ? &env->stack[env->top_stack - 1] : ((void*)0);
}
