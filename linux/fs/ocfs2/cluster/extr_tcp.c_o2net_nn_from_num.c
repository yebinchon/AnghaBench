
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct o2net_node {int dummy; } ;


 size_t ARRAY_SIZE (struct o2net_node*) ;
 int BUG_ON (int) ;
 struct o2net_node* o2net_nodes ;

__attribute__((used)) static struct o2net_node * o2net_nn_from_num(u8 node_num)
{
 BUG_ON(node_num >= ARRAY_SIZE(o2net_nodes));
 return &o2net_nodes[node_num];
}
