
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_verifier_env {TYPE_1__* subprog_info; } ;
struct bpf_insn {int imm; } ;
struct TYPE_2__ {int stack_depth; } ;


 int EFAULT ;
 int WARN_ONCE (int,char*,int) ;
 int find_subprog (struct bpf_verifier_env*,int) ;

__attribute__((used)) static int get_callee_stack_depth(struct bpf_verifier_env *env,
      const struct bpf_insn *insn, int idx)
{
 int start = idx + insn->imm + 1, subprog;

 subprog = find_subprog(env, start);
 if (subprog < 0) {
  WARN_ONCE(1, "verifier bug. No program starts at insn %d\n",
     start);
  return -EFAULT;
 }
 return env->subprog_info[subprog].stack_depth;
}
