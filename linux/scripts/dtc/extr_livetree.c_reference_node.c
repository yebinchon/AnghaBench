
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int is_referenced; } ;



struct node *reference_node(struct node *node)
{
 node->is_referenced = 1;

 return node;
}
