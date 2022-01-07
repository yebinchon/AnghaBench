
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; } ;
typedef int loff_t ;


 int __inode_get_bytes (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

loff_t inode_get_bytes(struct inode *inode)
{
 loff_t ret;

 spin_lock(&inode->i_lock);
 ret = __inode_get_bytes(inode);
 spin_unlock(&inode->i_lock);
 return ret;
}
