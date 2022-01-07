
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int __omfs_write_inode (struct inode*,int) ;

int omfs_sync_inode(struct inode *inode)
{
 return __omfs_write_inode(inode, 1);
}
