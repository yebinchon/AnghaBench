
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intlist {int rblist; } ;
struct int_node {int rb_node; } ;


 int rblist__remove_node (int *,int *) ;

void intlist__remove(struct intlist *ilist, struct int_node *node)
{
 rblist__remove_node(&ilist->rblist, &node->rb_node);
}
