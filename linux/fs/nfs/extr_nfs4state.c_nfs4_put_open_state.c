
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_state_owner {int so_lock; } ;
struct nfs4_state {int open_states; int inode_states; int count; struct nfs4_state_owner* owner; struct inode* inode; } ;
struct inode {int i_lock; } ;


 int iput (struct inode*) ;
 int list_del (int *) ;
 int list_del_rcu (int *) ;
 int nfs4_free_open_state (struct nfs4_state*) ;
 int nfs4_put_state_owner (struct nfs4_state_owner*) ;
 int refcount_dec_and_lock (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs4_put_open_state(struct nfs4_state *state)
{
 struct inode *inode = state->inode;
 struct nfs4_state_owner *owner = state->owner;

 if (!refcount_dec_and_lock(&state->count, &owner->so_lock))
  return;
 spin_lock(&inode->i_lock);
 list_del_rcu(&state->inode_states);
 list_del(&state->open_states);
 spin_unlock(&inode->i_lock);
 spin_unlock(&owner->so_lock);
 iput(inode);
 nfs4_free_open_state(state);
 nfs4_put_state_owner(owner);
}
