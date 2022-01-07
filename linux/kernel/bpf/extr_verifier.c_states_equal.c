
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bpf_verifier_state {int curframe; scalar_t__ active_spin_lock; TYPE_1__** frame; scalar_t__ speculative; } ;
struct bpf_verifier_env {int dummy; } ;
struct TYPE_3__ {scalar_t__ callsite; } ;


 int func_states_equal (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static bool states_equal(struct bpf_verifier_env *env,
    struct bpf_verifier_state *old,
    struct bpf_verifier_state *cur)
{
 int i;

 if (old->curframe != cur->curframe)
  return 0;




 if (old->speculative && !cur->speculative)
  return 0;

 if (old->active_spin_lock != cur->active_spin_lock)
  return 0;




 for (i = 0; i <= old->curframe; i++) {
  if (old->frame[i]->callsite != cur->frame[i]->callsite)
   return 0;
  if (!func_states_equal(old->frame[i], cur->frame[i]))
   return 0;
 }
 return 1;
}
