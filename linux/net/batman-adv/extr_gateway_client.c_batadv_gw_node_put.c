
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_gw_node {int refcount; } ;


 int batadv_gw_node_release ;
 int kref_put (int *,int ) ;

void batadv_gw_node_put(struct batadv_gw_node *gw_node)
{
 kref_put(&gw_node->refcount, batadv_gw_node_release);
}
