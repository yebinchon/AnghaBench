
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int delegation; } ;
struct nfs_delegation {int cred; int stateid; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;
typedef int nfs4_stateid ;
typedef int fmode_t ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 struct nfs_inode* NFS_I (struct inode*) ;
 struct cred* get_cred (int ) ;
 int nfs4_is_valid_delegation (struct nfs_delegation*,int) ;
 int nfs4_stateid_copy (int *,int *) ;
 int nfs_mark_delegation_referenced (struct nfs_delegation*) ;
 struct nfs_delegation* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

bool nfs4_copy_delegation_stateid(struct inode *inode, fmode_t flags,
  nfs4_stateid *dst, const struct cred **cred)
{
 struct nfs_inode *nfsi = NFS_I(inode);
 struct nfs_delegation *delegation;
 bool ret;

 flags &= FMODE_READ|FMODE_WRITE;
 rcu_read_lock();
 delegation = rcu_dereference(nfsi->delegation);
 ret = nfs4_is_valid_delegation(delegation, flags);
 if (ret) {
  nfs4_stateid_copy(dst, &delegation->stateid);
  nfs_mark_delegation_referenced(delegation);
  if (cred)
   *cred = get_cred(delegation->cred);
 }
 rcu_read_unlock();
 return ret;
}
