
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* insn_stack; int* insn_state; int cur_stack; } ;
struct bpf_verifier_env {scalar_t__ allow_ptr_leaks; TYPE_2__ cfg; TYPE_1__* prog; } ;
struct TYPE_3__ {int len; } ;


 int BRANCH ;
 int DISCOVERED ;
 int E2BIG ;
 int EFAULT ;
 int EINVAL ;
 int EXPLORED ;
 int FALLTHROUGH ;
 int init_explored_state (struct bpf_verifier_env*,int) ;
 int verbose (struct bpf_verifier_env*,char*,...) ;
 int verbose_linfo (struct bpf_verifier_env*,int,char*,int) ;

__attribute__((used)) static int push_insn(int t, int w, int e, struct bpf_verifier_env *env,
       bool loop_ok)
{
 int *insn_stack = env->cfg.insn_stack;
 int *insn_state = env->cfg.insn_state;

 if (e == FALLTHROUGH && insn_state[t] >= (DISCOVERED | FALLTHROUGH))
  return 0;

 if (e == BRANCH && insn_state[t] >= (DISCOVERED | BRANCH))
  return 0;

 if (w < 0 || w >= env->prog->len) {
  verbose_linfo(env, t, "%d: ", t);
  verbose(env, "jump out of range from insn %d to %d\n", t, w);
  return -EINVAL;
 }

 if (e == BRANCH)

  init_explored_state(env, w);

 if (insn_state[w] == 0) {

  insn_state[t] = DISCOVERED | e;
  insn_state[w] = DISCOVERED;
  if (env->cfg.cur_stack >= env->prog->len)
   return -E2BIG;
  insn_stack[env->cfg.cur_stack++] = w;
  return 1;
 } else if ((insn_state[w] & 0xF0) == DISCOVERED) {
  if (loop_ok && env->allow_ptr_leaks)
   return 0;
  verbose_linfo(env, t, "%d: ", t);
  verbose_linfo(env, w, "%d: ", w);
  verbose(env, "back-edge from insn %d to %d\n", t, w);
  return -EINVAL;
 } else if (insn_state[w] == EXPLORED) {

  insn_state[t] = DISCOVERED | e;
 } else {
  verbose(env, "insn state internal bug\n");
  return -EFAULT;
 }
 return 0;
}
