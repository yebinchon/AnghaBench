
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int open_states; } ;
struct nfs4_state_owner {int so_lock; int so_states; int so_count; } ;
struct nfs4_state {int open_states; struct inode* inode; int inode_states; struct nfs4_state_owner* owner; } ;
struct inode {int i_lock; } ;


 struct nfs_inode* NFS_I (struct inode*) ;
 struct nfs4_state* __nfs4_find_state_byowner (struct inode*,struct nfs4_state_owner*) ;
 int atomic_inc (int *) ;
 int ihold (struct inode*) ;
 int list_add_rcu (int *,int *) ;
 int list_add_tail (int *,int *) ;
 struct nfs4_state* nfs4_alloc_open_state () ;
 int nfs4_free_open_state (struct nfs4_state*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct nfs4_state *
nfs4_get_open_state(struct inode *inode, struct nfs4_state_owner *owner)
{
 struct nfs4_state *state, *new;
 struct nfs_inode *nfsi = NFS_I(inode);

 rcu_read_lock();
 state = __nfs4_find_state_byowner(inode, owner);
 rcu_read_unlock();
 if (state)
  goto out;
 new = nfs4_alloc_open_state();
 spin_lock(&owner->so_lock);
 spin_lock(&inode->i_lock);
 state = __nfs4_find_state_byowner(inode, owner);
 if (state == ((void*)0) && new != ((void*)0)) {
  state = new;
  state->owner = owner;
  atomic_inc(&owner->so_count);
  list_add_rcu(&state->inode_states, &nfsi->open_states);
  ihold(inode);
  state->inode = inode;
  spin_unlock(&inode->i_lock);


  list_add_tail(&state->open_states, &owner->so_states);
  spin_unlock(&owner->so_lock);
 } else {
  spin_unlock(&inode->i_lock);
  spin_unlock(&owner->so_lock);
  if (new)
   nfs4_free_open_state(new);
 }
out:
 return state;
}
