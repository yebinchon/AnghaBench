
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_orig_node {int refcount; } ;


 int batadv_orig_node_release ;
 int kref_put (int *,int ) ;

void batadv_orig_node_put(struct batadv_orig_node *orig_node)
{
 kref_put(&orig_node->refcount, batadv_orig_node_release);
}
