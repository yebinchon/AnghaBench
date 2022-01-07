
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_state {int state_lock; int flags; } ;
typedef int nfs4_stateid ;


 int LK_STATE_IN_USE ;
 scalar_t__ nfs_state_find_lock_state_by_stateid (struct nfs4_state*,int const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool nfs_state_lock_state_matches_stateid(struct nfs4_state *state,
  const nfs4_stateid *stateid)
{
 bool found = 0;

 if (test_bit(LK_STATE_IN_USE, &state->flags)) {
  spin_lock(&state->state_lock);
  if (nfs_state_find_lock_state_by_stateid(state, stateid))
   found = 1;
  spin_unlock(&state->state_lock);
 }
 return found;
}
