
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_state; int i_lock; } ;


 int I_NEW ;
 int WARN_ON (int) ;
 int __I_NEW ;
 int iput (struct inode*) ;
 int lockdep_annotate_inode_mutex_key (struct inode*) ;
 int smp_mb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_bit (int*,int ) ;

void discard_new_inode(struct inode *inode)
{
 lockdep_annotate_inode_mutex_key(inode);
 spin_lock(&inode->i_lock);
 WARN_ON(!(inode->i_state & I_NEW));
 inode->i_state &= ~I_NEW;
 smp_mb();
 wake_up_bit(&inode->i_state, __I_NEW);
 spin_unlock(&inode->i_lock);
 iput(inode);
}
