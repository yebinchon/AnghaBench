
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int omit_if_unused; } ;



struct node *omit_node_if_unused(struct node *node)
{
 node->omit_if_unused = 1;

 return node;
}
