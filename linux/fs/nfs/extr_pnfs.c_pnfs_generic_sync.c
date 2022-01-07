
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int pnfs_layoutcommit_inode (struct inode*,int) ;

int
pnfs_generic_sync(struct inode *inode, bool datasync)
{
 return pnfs_layoutcommit_inode(inode, 1);
}
