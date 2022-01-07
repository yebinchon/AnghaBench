
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 scalar_t__ NFS_STALE (struct inode*) ;
 scalar_t__ generic_drop_inode (struct inode*) ;

int nfs_drop_inode(struct inode *inode)
{
 return NFS_STALE(inode) || generic_drop_inode(inode);
}
