
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_ops {int list; scalar_t__ dellink; scalar_t__ setup; int kind; } ;


 int EEXIST ;
 int link_ops ;
 int list_add_tail (int *,int *) ;
 scalar_t__ rtnl_link_ops_get (int ) ;
 scalar_t__ unregister_netdevice_queue ;

int __rtnl_link_register(struct rtnl_link_ops *ops)
{
 if (rtnl_link_ops_get(ops->kind))
  return -EEXIST;






 if (ops->setup && !ops->dellink)
  ops->dellink = unregister_netdevice_queue;

 list_add_tail(&ops->list, &link_ops);
 return 0;
}
