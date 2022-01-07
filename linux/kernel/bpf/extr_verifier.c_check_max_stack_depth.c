
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_verifier_env {TYPE_1__* prog; struct bpf_subprog_info* subprog_info; } ;
struct bpf_subprog_info {int start; int stack_depth; } ;
struct bpf_insn {int code; scalar_t__ src_reg; int imm; } ;
struct TYPE_2__ {struct bpf_insn* insnsi; } ;


 int BPF_CALL ;
 int BPF_JMP ;
 scalar_t__ BPF_PSEUDO_CALL ;
 int E2BIG ;
 int EACCES ;
 int EFAULT ;
 int MAX_BPF_STACK ;
 int MAX_CALL_FRAMES ;
 int WARN_ONCE (int,char*,int) ;
 int find_subprog (struct bpf_verifier_env*,int) ;
 int max_t (int ,int ,int) ;
 scalar_t__ round_up (int ,int) ;
 int u32 ;
 int verbose (struct bpf_verifier_env*,char*,int,...) ;

__attribute__((used)) static int check_max_stack_depth(struct bpf_verifier_env *env)
{
 int depth = 0, frame = 0, idx = 0, i = 0, subprog_end;
 struct bpf_subprog_info *subprog = env->subprog_info;
 struct bpf_insn *insn = env->prog->insnsi;
 int ret_insn[MAX_CALL_FRAMES];
 int ret_prog[MAX_CALL_FRAMES];

process_func:



 depth += round_up(max_t(u32, subprog[idx].stack_depth, 1), 32);
 if (depth > MAX_BPF_STACK) {
  verbose(env, "combined stack size of %d calls is %d. Too large\n",
   frame + 1, depth);
  return -EACCES;
 }
continue_func:
 subprog_end = subprog[idx + 1].start;
 for (; i < subprog_end; i++) {
  if (insn[i].code != (BPF_JMP | BPF_CALL))
   continue;
  if (insn[i].src_reg != BPF_PSEUDO_CALL)
   continue;

  ret_insn[frame] = i + 1;
  ret_prog[frame] = idx;


  i = i + insn[i].imm + 1;
  idx = find_subprog(env, i);
  if (idx < 0) {
   WARN_ONCE(1, "verifier bug. No program starts at insn %d\n",
      i);
   return -EFAULT;
  }
  frame++;
  if (frame >= MAX_CALL_FRAMES) {
   verbose(env, "the call stack of %d frames is too deep !\n",
    frame);
   return -E2BIG;
  }
  goto process_func;
 }



 if (frame == 0)
  return 0;
 depth -= round_up(max_t(u32, subprog[idx].stack_depth, 1), 32);
 frame--;
 i = ret_insn[frame];
 idx = ret_prog[frame];
 goto continue_func;
}
