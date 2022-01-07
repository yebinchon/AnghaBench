
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static void tipc_node_get(struct tipc_node *node)
{
 kref_get(&node->kref);
}
