
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_rwsem; } ;


 int up_read (int *) ;

void
nfs_end_io_direct(struct inode *inode)
{
 up_read(&inode->i_rwsem);
}
