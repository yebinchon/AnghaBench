
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct bpf_verifier_state {size_t curframe; struct bpf_func_state** frame; } ;
struct TYPE_3__ {int level; } ;
struct bpf_verifier_env {TYPE_1__ log; struct bpf_verifier_state* cur_state; } ;
struct bpf_spin_lock {int dummy; } ;
struct bpf_reg_state {scalar_t__ smin_value; scalar_t__ umax_value; TYPE_2__* map_ptr; } ;
struct bpf_func_state {struct bpf_reg_state* regs; } ;
typedef scalar_t__ s64 ;
typedef scalar_t__ s32 ;
struct TYPE_4__ {size_t spin_lock_off; } ;


 int BPF_LOG_LEVEL ;
 scalar_t__ BPF_MAX_VAR_OFF ;
 int EACCES ;
 scalar_t__ S64_MIN ;
 int __check_map_access (struct bpf_verifier_env*,size_t,scalar_t__,int,int) ;
 scalar_t__ map_value_has_spin_lock (TYPE_2__*) ;
 int print_verifier_state (struct bpf_verifier_env*,struct bpf_func_state*) ;
 int verbose (struct bpf_verifier_env*,char*,...) ;

__attribute__((used)) static int check_map_access(struct bpf_verifier_env *env, u32 regno,
       int off, int size, bool zero_size_allowed)
{
 struct bpf_verifier_state *vstate = env->cur_state;
 struct bpf_func_state *state = vstate->frame[vstate->curframe];
 struct bpf_reg_state *reg = &state->regs[regno];
 int err;





 if (env->log.level & BPF_LOG_LEVEL)
  print_verifier_state(env, state);







 if (reg->smin_value < 0 &&
     (reg->smin_value == S64_MIN ||
      (off + reg->smin_value != (s64)(s32)(off + reg->smin_value)) ||
       reg->smin_value + off < 0)) {
  verbose(env, "R%d min value is negative, either use unsigned index or do a if (index >=0) check.\n",
   regno);
  return -EACCES;
 }
 err = __check_map_access(env, regno, reg->smin_value + off, size,
     zero_size_allowed);
 if (err) {
  verbose(env, "R%d min value is outside of the array range\n",
   regno);
  return err;
 }





 if (reg->umax_value >= BPF_MAX_VAR_OFF) {
  verbose(env, "R%d unbounded memory access, make sure to bounds check any array access into a map\n",
   regno);
  return -EACCES;
 }
 err = __check_map_access(env, regno, reg->umax_value + off, size,
     zero_size_allowed);
 if (err)
  verbose(env, "R%d max value is outside of the array range\n",
   regno);

 if (map_value_has_spin_lock(reg->map_ptr)) {
  u32 lock = reg->map_ptr->spin_lock_off;






  if (reg->smin_value + off < lock + sizeof(struct bpf_spin_lock) &&
       lock < reg->umax_value + off + size) {
   verbose(env, "bpf_spin_lock cannot be accessed directly by load/store\n");
   return -EACCES;
  }
 }
 return err;
}
