
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {int dummy; } ;
struct config_item {int dummy; } ;


 int kfree (struct o2nm_node*) ;
 struct o2nm_node* to_o2nm_node (struct config_item*) ;

__attribute__((used)) static void o2nm_node_release(struct config_item *item)
{
 struct o2nm_node *node = to_o2nm_node(item);
 kfree(node);
}
