
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {struct node* next_sibling; } ;


 int assert (int ) ;

struct node *chain_node(struct node *first, struct node *list)
{
 assert(first->next_sibling == ((void*)0));

 first->next_sibling = list;
 return first;
}
