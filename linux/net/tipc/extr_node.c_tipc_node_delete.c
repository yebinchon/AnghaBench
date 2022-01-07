
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {int timer; } ;


 int del_timer_sync (int *) ;
 int tipc_node_delete_from_list (struct tipc_node*) ;
 int tipc_node_put (struct tipc_node*) ;
 int trace_tipc_node_delete (struct tipc_node*,int,char*) ;

__attribute__((used)) static void tipc_node_delete(struct tipc_node *node)
{
 trace_tipc_node_delete(node, 1, " ");
 tipc_node_delete_from_list(node);

 del_timer_sync(&node->timer);
 tipc_node_put(node);
}
