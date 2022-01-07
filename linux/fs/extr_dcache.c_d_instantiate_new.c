
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_state; int i_lock; } ;
struct TYPE_2__ {int d_alias; } ;
struct dentry {TYPE_1__ d_u; } ;


 int BUG_ON (int) ;
 int I_CREATING ;
 int I_NEW ;
 int WARN_ON (int) ;
 int __I_NEW ;
 int __d_instantiate (struct dentry*,struct inode*) ;
 int hlist_unhashed (int *) ;
 int lockdep_annotate_inode_mutex_key (struct inode*) ;
 int security_d_instantiate (struct dentry*,struct inode*) ;
 int smp_mb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_bit (int*,int ) ;

void d_instantiate_new(struct dentry *entry, struct inode *inode)
{
 BUG_ON(!hlist_unhashed(&entry->d_u.d_alias));
 BUG_ON(!inode);
 lockdep_annotate_inode_mutex_key(inode);
 security_d_instantiate(entry, inode);
 spin_lock(&inode->i_lock);
 __d_instantiate(entry, inode);
 WARN_ON(!(inode->i_state & I_NEW));
 inode->i_state &= ~I_NEW & ~I_CREATING;
 smp_mb();
 wake_up_bit(&inode->i_state, __I_NEW);
 spin_unlock(&inode->i_lock);
}
