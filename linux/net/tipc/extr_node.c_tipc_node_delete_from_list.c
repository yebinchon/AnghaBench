
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {int hash; int list; } ;


 int hlist_del_rcu (int *) ;
 int list_del_rcu (int *) ;
 int tipc_node_put (struct tipc_node*) ;

__attribute__((used)) static void tipc_node_delete_from_list(struct tipc_node *node)
{
 list_del_rcu(&node->list);
 hlist_del_rcu(&node->hash);
 tipc_node_put(node);
}
