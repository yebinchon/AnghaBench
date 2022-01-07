
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bpf_func_state {int acquired_refs; TYPE_1__* refs; } ;
struct TYPE_4__ {int id; } ;


 int EINVAL ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int release_reference_state(struct bpf_func_state *state, int ptr_id)
{
 int i, last_idx;

 last_idx = state->acquired_refs - 1;
 for (i = 0; i < state->acquired_refs; i++) {
  if (state->refs[i].id == ptr_id) {
   if (last_idx && i != last_idx)
    memcpy(&state->refs[i], &state->refs[last_idx],
           sizeof(*state->refs));
   memset(&state->refs[last_idx], 0, sizeof(*state->refs));
   state->acquired_refs--;
   return 0;
  }
 }
 return -EINVAL;
}
