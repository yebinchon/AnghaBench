
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_delegation {int dummy; } ;
struct inode {int dummy; } ;
typedef int nfs4_stateid ;


 int nfs_free_delegation (struct nfs_delegation*) ;
 struct nfs_delegation* nfs_inode_detach_delegation (struct inode*) ;
 int nfs_revoke_delegation (struct inode*,int const*) ;

void nfs_remove_bad_delegation(struct inode *inode,
  const nfs4_stateid *stateid)
{
 struct nfs_delegation *delegation;

 if (!nfs_revoke_delegation(inode, stateid))
  return;
 delegation = nfs_inode_detach_delegation(inode);
 if (delegation)
  nfs_free_delegation(delegation);
}
