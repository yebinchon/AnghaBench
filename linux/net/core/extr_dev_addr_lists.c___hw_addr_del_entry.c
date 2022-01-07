
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_hw_addr_list {int count; } ;
struct netdev_hw_addr {int global_use; int list; scalar_t__ refcount; int synced; } ;


 int ENOENT ;
 int kfree_rcu (struct netdev_hw_addr*,int ) ;
 int list_del_rcu (int *) ;
 int rcu_head ;

__attribute__((used)) static int __hw_addr_del_entry(struct netdev_hw_addr_list *list,
          struct netdev_hw_addr *ha, bool global,
          bool sync)
{
 if (global && !ha->global_use)
  return -ENOENT;

 if (sync && !ha->synced)
  return -ENOENT;

 if (global)
  ha->global_use = 0;

 if (sync)
  ha->synced--;

 if (--ha->refcount)
  return 0;
 list_del_rcu(&ha->list);
 kfree_rcu(ha, rcu_head);
 list->count--;
 return 0;
}
