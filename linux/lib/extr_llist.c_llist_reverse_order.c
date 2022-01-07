
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llist_node {struct llist_node* next; } ;



struct llist_node *llist_reverse_order(struct llist_node *head)
{
 struct llist_node *new_head = ((void*)0);

 while (head) {
  struct llist_node *tmp = head;
  head = head->next;
  tmp->next = new_head;
  new_head = tmp;
 }

 return new_head;
}
