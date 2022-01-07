
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llist_node {int next; } ;
struct llist_head {int first; } ;


 struct llist_node* READ_ONCE (int ) ;
 struct llist_node* cmpxchg (int *,struct llist_node*,struct llist_node*) ;
 struct llist_node* smp_load_acquire (int *) ;

struct llist_node *llist_del_first(struct llist_head *head)
{
 struct llist_node *entry, *old_entry, *next;

 entry = smp_load_acquire(&head->first);
 for (;;) {
  if (entry == ((void*)0))
   return ((void*)0);
  old_entry = entry;
  next = READ_ONCE(entry->next);
  entry = cmpxchg(&head->first, old_entry, next);
  if (entry == old_entry)
   break;
 }

 return entry;
}
