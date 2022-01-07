
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_state; int i_lock; } ;


 int I_FREEING ;
 int I_WILL_FREE ;
 int __iget (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct inode *igrab(struct inode *inode)
{
 spin_lock(&inode->i_lock);
 if (!(inode->i_state & (I_FREEING|I_WILL_FREE))) {
  __iget(inode);
  spin_unlock(&inode->i_lock);
 } else {
  spin_unlock(&inode->i_lock);





  inode = ((void*)0);
 }
 return inode;
}
