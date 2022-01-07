
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_state {int waitq; int seqlock; int state_lock; int lock_states; int count; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 struct nfs4_state* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;
 int seqlock_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct nfs4_state *
nfs4_alloc_open_state(void)
{
 struct nfs4_state *state;

 state = kzalloc(sizeof(*state), GFP_NOFS);
 if (!state)
  return ((void*)0);
 refcount_set(&state->count, 1);
 INIT_LIST_HEAD(&state->lock_states);
 spin_lock_init(&state->state_lock);
 seqlock_init(&state->seqlock);
 init_waitqueue_head(&state->waitq);
 return state;
}
