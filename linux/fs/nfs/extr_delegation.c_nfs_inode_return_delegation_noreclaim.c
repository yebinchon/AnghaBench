
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_delegation {int dummy; } ;
struct inode {int dummy; } ;


 int nfs_do_return_delegation (struct inode*,struct nfs_delegation*,int) ;
 struct nfs_delegation* nfs_inode_detach_delegation (struct inode*) ;

void nfs_inode_return_delegation_noreclaim(struct inode *inode)
{
 struct nfs_delegation *delegation;

 delegation = nfs_inode_detach_delegation(inode);
 if (delegation != ((void*)0))
  nfs_do_return_delegation(inode, delegation, 1);
}
