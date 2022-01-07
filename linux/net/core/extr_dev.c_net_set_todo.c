
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int todo_list; } ;
struct TYPE_2__ {int dev_unreg_count; } ;


 TYPE_1__* dev_net (struct net_device*) ;
 int list_add_tail (int *,int *) ;
 int net_todo_list ;

__attribute__((used)) static void net_set_todo(struct net_device *dev)
{
 list_add_tail(&dev->todo_list, &net_todo_list);
 dev_net(dev)->dev_unreg_count++;
}
