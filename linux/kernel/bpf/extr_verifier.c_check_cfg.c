
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {int* insn_state; int* insn_stack; int cur_stack; } ;
struct bpf_verifier_env {TYPE_2__ cfg; TYPE_1__* prog; } ;
struct bpf_insn {scalar_t__ src_reg; int imm; int off; int code; } ;
struct TYPE_3__ {int len; struct bpf_insn* insnsi; } ;


 scalar_t__ BPF_CALL ;
 scalar_t__ BPF_CLASS (int ) ;
 scalar_t__ BPF_EXIT ;
 scalar_t__ BPF_JA ;
 scalar_t__ BPF_JMP ;
 scalar_t__ BPF_JMP32 ;
 scalar_t__ BPF_K ;
 scalar_t__ BPF_OP (int ) ;
 scalar_t__ BPF_PSEUDO_CALL ;
 scalar_t__ BPF_SRC (int ) ;
 int BRANCH ;
 int DISCOVERED ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int EXPLORED ;
 int FALLTHROUGH ;
 int GFP_KERNEL ;
 int init_explored_state (struct bpf_verifier_env*,int) ;
 void* kvcalloc (int,int,int ) ;
 int kvfree (int*) ;
 int push_insn (int,int,int ,struct bpf_verifier_env*,int) ;
 int verbose (struct bpf_verifier_env*,char*,...) ;

__attribute__((used)) static int check_cfg(struct bpf_verifier_env *env)
{
 struct bpf_insn *insns = env->prog->insnsi;
 int insn_cnt = env->prog->len;
 int *insn_stack, *insn_state;
 int ret = 0;
 int i, t;

 insn_state = env->cfg.insn_state = kvcalloc(insn_cnt, sizeof(int), GFP_KERNEL);
 if (!insn_state)
  return -ENOMEM;

 insn_stack = env->cfg.insn_stack = kvcalloc(insn_cnt, sizeof(int), GFP_KERNEL);
 if (!insn_stack) {
  kvfree(insn_state);
  return -ENOMEM;
 }

 insn_state[0] = DISCOVERED;
 insn_stack[0] = 0;
 env->cfg.cur_stack = 1;

peek_stack:
 if (env->cfg.cur_stack == 0)
  goto check_state;
 t = insn_stack[env->cfg.cur_stack - 1];

 if (BPF_CLASS(insns[t].code) == BPF_JMP ||
     BPF_CLASS(insns[t].code) == BPF_JMP32) {
  u8 opcode = BPF_OP(insns[t].code);

  if (opcode == BPF_EXIT) {
   goto mark_explored;
  } else if (opcode == BPF_CALL) {
   ret = push_insn(t, t + 1, FALLTHROUGH, env, 0);
   if (ret == 1)
    goto peek_stack;
   else if (ret < 0)
    goto err_free;
   if (t + 1 < insn_cnt)
    init_explored_state(env, t + 1);
   if (insns[t].src_reg == BPF_PSEUDO_CALL) {
    init_explored_state(env, t);
    ret = push_insn(t, t + insns[t].imm + 1, BRANCH,
      env, 0);
    if (ret == 1)
     goto peek_stack;
    else if (ret < 0)
     goto err_free;
   }
  } else if (opcode == BPF_JA) {
   if (BPF_SRC(insns[t].code) != BPF_K) {
    ret = -EINVAL;
    goto err_free;
   }

   ret = push_insn(t, t + insns[t].off + 1,
     FALLTHROUGH, env, 1);
   if (ret == 1)
    goto peek_stack;
   else if (ret < 0)
    goto err_free;




   init_explored_state(env, t + insns[t].off + 1);



   if (t + 1 < insn_cnt)
    init_explored_state(env, t + 1);
  } else {

   init_explored_state(env, t);
   ret = push_insn(t, t + 1, FALLTHROUGH, env, 1);
   if (ret == 1)
    goto peek_stack;
   else if (ret < 0)
    goto err_free;

   ret = push_insn(t, t + insns[t].off + 1, BRANCH, env, 1);
   if (ret == 1)
    goto peek_stack;
   else if (ret < 0)
    goto err_free;
  }
 } else {



  ret = push_insn(t, t + 1, FALLTHROUGH, env, 0);
  if (ret == 1)
   goto peek_stack;
  else if (ret < 0)
   goto err_free;
 }

mark_explored:
 insn_state[t] = EXPLORED;
 if (env->cfg.cur_stack-- <= 0) {
  verbose(env, "pop stack internal bug\n");
  ret = -EFAULT;
  goto err_free;
 }
 goto peek_stack;

check_state:
 for (i = 0; i < insn_cnt; i++) {
  if (insn_state[i] != EXPLORED) {
   verbose(env, "unreachable insn %d\n", i);
   ret = -EINVAL;
   goto err_free;
  }
 }
 ret = 0;

err_free:
 kvfree(insn_state);
 kvfree(insn_stack);
 env->cfg.insn_state = env->cfg.insn_stack = ((void*)0);
 return ret;
}
