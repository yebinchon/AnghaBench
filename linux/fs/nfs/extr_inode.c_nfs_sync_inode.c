
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int inode_dio_wait (struct inode*) ;
 int nfs_wb_all (struct inode*) ;

int nfs_sync_inode(struct inode *inode)
{
 inode_dio_wait(inode);
 return nfs_wb_all(inode);
}
