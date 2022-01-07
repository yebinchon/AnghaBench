
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {int nd_item; } ;


 int config_item_put (int *) ;

void o2nm_node_put(struct o2nm_node *node)
{
 config_item_put(&node->nd_item);
}
