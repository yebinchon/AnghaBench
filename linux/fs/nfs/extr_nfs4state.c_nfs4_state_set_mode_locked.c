
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_state {int state; TYPE_1__* owner; int open_states; } ;
typedef int fmode_t ;
struct TYPE_2__ {int so_states; } ;


 int FMODE_WRITE ;
 int list_move (int *,int *) ;
 int list_move_tail (int *,int *) ;

void
nfs4_state_set_mode_locked(struct nfs4_state *state, fmode_t fmode)
{
 if (state->state == fmode)
  return;

 if ((fmode & FMODE_WRITE) != (state->state & FMODE_WRITE)) {
  if (fmode & FMODE_WRITE)
   list_move(&state->open_states, &state->owner->so_states);
  else
   list_move_tail(&state->open_states, &state->owner->so_states);
 }
 state->state = fmode;
}
