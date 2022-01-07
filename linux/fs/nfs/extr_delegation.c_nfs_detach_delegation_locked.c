
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int delegation; } ;
struct nfs_delegation {int lock; int * inode; int super_list; int flags; } ;
struct nfs_client {int cl_lock; } ;


 int NFS_DELEGATION_RETURNING ;
 int list_del_rcu (int *) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,int *) ;
 struct nfs_delegation* rcu_dereference_protected (int ,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs_delegation *
nfs_detach_delegation_locked(struct nfs_inode *nfsi,
  struct nfs_delegation *delegation,
  struct nfs_client *clp)
{
 struct nfs_delegation *deleg_cur =
  rcu_dereference_protected(nfsi->delegation,
    lockdep_is_held(&clp->cl_lock));

 if (deleg_cur == ((void*)0) || delegation != deleg_cur)
  return ((void*)0);

 spin_lock(&delegation->lock);
 set_bit(NFS_DELEGATION_RETURNING, &delegation->flags);
 list_del_rcu(&delegation->super_list);
 delegation->inode = ((void*)0);
 rcu_assign_pointer(nfsi->delegation, ((void*)0));
 spin_unlock(&delegation->lock);
 return delegation;
}
