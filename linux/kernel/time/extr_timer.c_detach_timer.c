
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_node {int next; int * pprev; } ;
struct timer_list {struct hlist_node entry; } ;


 int LIST_POISON2 ;
 int __hlist_del (struct hlist_node*) ;
 int debug_deactivate (struct timer_list*) ;

__attribute__((used)) static inline void detach_timer(struct timer_list *timer, bool clear_pending)
{
 struct hlist_node *entry = &timer->entry;

 debug_deactivate(timer);

 __hlist_del(entry);
 if (clear_pending)
  entry->pprev = ((void*)0);
 entry->next = LIST_POISON2;
}
