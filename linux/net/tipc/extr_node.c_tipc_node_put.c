
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {int kref; } ;


 int kref_put (int *,int ) ;
 int tipc_node_kref_release ;

__attribute__((used)) static void tipc_node_put(struct tipc_node *node)
{
 kref_put(&node->kref, tipc_node_kref_release);
}
