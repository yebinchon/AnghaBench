
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* prev; struct list_head* next; } ;


 struct list_head* cmpxchg (struct list_head**,struct list_head*,struct list_head*) ;
 struct list_head* xchg (struct list_head**,struct list_head*) ;

__attribute__((used)) static inline bool list_add_tail_lockless(struct list_head *new,
       struct list_head *head)
{
 struct list_head *prev;







 if (cmpxchg(&new->next, new, head) != new)
  return 0;
 prev = xchg(&head->prev, new);






 prev->next = new;
 new->prev = prev;

 return 1;
}
