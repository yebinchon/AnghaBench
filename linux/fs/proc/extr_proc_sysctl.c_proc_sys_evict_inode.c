
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ctl_table_header {int count; } ;
struct TYPE_2__ {int sysctl_inodes; } ;


 TYPE_1__* PROC_I (struct inode*) ;
 int hlist_del_init_rcu (int *) ;
 int kfree_rcu (struct ctl_table_header*,int ) ;
 int rcu ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysctl_lock ;

void proc_sys_evict_inode(struct inode *inode, struct ctl_table_header *head)
{
 spin_lock(&sysctl_lock);
 hlist_del_init_rcu(&PROC_I(inode)->sysctl_inodes);
 if (!--head->count)
  kfree_rcu(head, rcu);
 spin_unlock(&sysctl_lock);
}
