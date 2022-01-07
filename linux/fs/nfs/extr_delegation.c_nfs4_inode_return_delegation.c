
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int dummy; } ;
struct nfs_delegation {int dummy; } ;
struct inode {int dummy; } ;


 struct nfs_inode* NFS_I (struct inode*) ;
 int nfs_end_delegation_return (struct inode*,struct nfs_delegation*,int) ;
 struct nfs_delegation* nfs_start_delegation_return (struct nfs_inode*) ;
 int nfs_wb_all (struct inode*) ;

int nfs4_inode_return_delegation(struct inode *inode)
{
 struct nfs_inode *nfsi = NFS_I(inode);
 struct nfs_delegation *delegation;
 int err = 0;

 nfs_wb_all(inode);
 delegation = nfs_start_delegation_return(nfsi);
 if (delegation != ((void*)0))
  err = nfs_end_delegation_return(inode, delegation, 1);
 return err;
}
