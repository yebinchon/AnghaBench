
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_state {TYPE_1__* owner; int state_lock; int flags; int lock_states; } ;
struct nfs4_lock_state {int ls_locks; } ;
typedef int fl_owner_t ;
struct TYPE_2__ {int so_server; } ;


 int LK_STATE_IN_USE ;
 struct nfs4_lock_state* __nfs4_find_lock_state (struct nfs4_state*,int ,int *) ;
 int list_add (int *,int *) ;
 struct nfs4_lock_state* nfs4_alloc_lock_state (struct nfs4_state*,int ) ;
 int nfs4_free_lock_state (int ,struct nfs4_lock_state*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs4_lock_state *nfs4_get_lock_state(struct nfs4_state *state, fl_owner_t owner)
{
 struct nfs4_lock_state *lsp, *new = ((void*)0);

 for(;;) {
  spin_lock(&state->state_lock);
  lsp = __nfs4_find_lock_state(state, owner, ((void*)0));
  if (lsp != ((void*)0))
   break;
  if (new != ((void*)0)) {
   list_add(&new->ls_locks, &state->lock_states);
   set_bit(LK_STATE_IN_USE, &state->flags);
   lsp = new;
   new = ((void*)0);
   break;
  }
  spin_unlock(&state->state_lock);
  new = nfs4_alloc_lock_state(state, owner);
  if (new == ((void*)0))
   return ((void*)0);
 }
 spin_unlock(&state->state_lock);
 if (new != ((void*)0))
  nfs4_free_lock_state(state->owner->so_server, new);
 return lsp;
}
