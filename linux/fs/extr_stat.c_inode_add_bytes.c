
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; } ;
typedef int loff_t ;


 int __inode_add_bytes (struct inode*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void inode_add_bytes(struct inode *inode, loff_t bytes)
{
 spin_lock(&inode->i_lock);
 __inode_add_bytes(inode, bytes);
 spin_unlock(&inode->i_lock);
}
