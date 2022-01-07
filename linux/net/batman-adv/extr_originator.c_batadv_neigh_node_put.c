
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_neigh_node {int refcount; } ;


 int batadv_neigh_node_release ;
 int kref_put (int *,int ) ;

void batadv_neigh_node_put(struct batadv_neigh_node *neigh_node)
{
 kref_put(&neigh_node->refcount, batadv_neigh_node_release);
}
