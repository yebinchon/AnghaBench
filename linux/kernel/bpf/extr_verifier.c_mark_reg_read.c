
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bpf_verifier_env {int longest_mark_read_walk; } ;
struct TYPE_2__ {int value; } ;
struct bpf_reg_state {int live; size_t type; struct bpf_reg_state* parent; int off; TYPE_1__ var_off; } ;


 int EFAULT ;
 int REG_LIVE_DONE ;
 int REG_LIVE_READ ;
 int REG_LIVE_READ32 ;
 int REG_LIVE_READ64 ;
 int REG_LIVE_WRITTEN ;
 int * reg_type_str ;
 int verbose (struct bpf_verifier_env*,char*,int ,int ,int ) ;

__attribute__((used)) static int mark_reg_read(struct bpf_verifier_env *env,
    const struct bpf_reg_state *state,
    struct bpf_reg_state *parent, u8 flag)
{
 bool writes = parent == state->parent;
 int cnt = 0;

 while (parent) {

  if (writes && state->live & REG_LIVE_WRITTEN)
   break;
  if (parent->live & REG_LIVE_DONE) {
   verbose(env, "verifier BUG type %s var_off %lld off %d\n",
    reg_type_str[parent->type],
    parent->var_off.value, parent->off);
   return -EFAULT;
  }



  if ((parent->live & REG_LIVE_READ) == flag ||
      parent->live & REG_LIVE_READ64)
   break;

  parent->live |= flag;

  if (flag == REG_LIVE_READ64)
   parent->live &= ~REG_LIVE_READ32;
  state = parent;
  parent = state->parent;
  writes = 1;
  cnt++;
 }

 if (env->longest_mark_read_walk < cnt)
  env->longest_mark_read_walk = cnt;
 return 0;
}
