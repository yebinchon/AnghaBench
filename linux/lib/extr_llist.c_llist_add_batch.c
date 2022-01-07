
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llist_node {struct llist_node* next; } ;
struct llist_head {int first; } ;


 struct llist_node* READ_ONCE (int ) ;
 struct llist_node* cmpxchg (int *,struct llist_node*,struct llist_node*) ;

bool llist_add_batch(struct llist_node *new_first, struct llist_node *new_last,
       struct llist_head *head)
{
 struct llist_node *first;

 do {
  new_last->next = first = READ_ONCE(head->first);
 } while (cmpxchg(&head->first, first, new_first) != first);

 return !first;
}
