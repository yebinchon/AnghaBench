
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_rwsem; } ;


 int up_write (int *) ;

void
nfs_end_io_write(struct inode *inode)
{
 up_write(&inode->i_rwsem);
}
