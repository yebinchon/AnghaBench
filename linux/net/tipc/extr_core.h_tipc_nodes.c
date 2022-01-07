
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {struct list_head node_list; } ;


 TYPE_1__* tipc_net (struct net*) ;

__attribute__((used)) static inline struct list_head *tipc_nodes(struct net *net)
{
 return &tipc_net(net)->node_list;
}
