
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_dio_count; } ;


 int __inode_dio_wait (struct inode*) ;
 scalar_t__ atomic_read (int *) ;

void inode_dio_wait(struct inode *inode)
{
 if (atomic_read(&inode->i_dio_count))
  __inode_dio_wait(inode);
}
