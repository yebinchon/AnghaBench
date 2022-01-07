
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_delegation {unsigned long pagemod_limit; int lock; int flags; struct cred* cred; int type; int stateid; int * inode; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;
typedef int nfs4_stateid ;
typedef int fmode_t ;
struct TYPE_2__ {int delegation; } ;


 int NFS_DELEGATION_NEED_RECLAIM ;
 TYPE_1__* NFS_I (struct inode*) ;
 int clear_bit (int ,int *) ;
 struct cred* get_cred (struct cred const*) ;
 int nfs4_stateid_copy (int *,int const*) ;
 int nfs_inode_set_delegation (struct inode*,struct cred const*,int ,int const*,unsigned long) ;
 int put_cred (struct cred const*) ;
 struct nfs_delegation* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_nfs4_reclaim_delegation (struct inode*,int ) ;

void nfs_inode_reclaim_delegation(struct inode *inode, const struct cred *cred,
      fmode_t type,
      const nfs4_stateid *stateid,
      unsigned long pagemod_limit)
{
 struct nfs_delegation *delegation;
 const struct cred *oldcred = ((void*)0);

 rcu_read_lock();
 delegation = rcu_dereference(NFS_I(inode)->delegation);
 if (delegation != ((void*)0)) {
  spin_lock(&delegation->lock);
  if (delegation->inode != ((void*)0)) {
   nfs4_stateid_copy(&delegation->stateid, stateid);
   delegation->type = type;
   delegation->pagemod_limit = pagemod_limit;
   oldcred = delegation->cred;
   delegation->cred = get_cred(cred);
   clear_bit(NFS_DELEGATION_NEED_RECLAIM,
      &delegation->flags);
   spin_unlock(&delegation->lock);
   rcu_read_unlock();
   put_cred(oldcred);
   trace_nfs4_reclaim_delegation(inode, type);
   return;
  }

  spin_unlock(&delegation->lock);
 }
 rcu_read_unlock();
 nfs_inode_set_delegation(inode, cred, type, stateid, pagemod_limit);
}
