
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* prev; struct list_head* next; } ;
typedef int cmp_func ;


 scalar_t__ likely (size_t) ;
 struct list_head* merge (void*,int ,struct list_head*,struct list_head*) ;
 int merge_final (void*,int ,struct list_head*,struct list_head*,struct list_head*) ;

__attribute__((nonnull(2,3)))
void list_sort(void *priv, struct list_head *head,
  int (*cmp)(void *priv, struct list_head *a,
   struct list_head *b))
{
 struct list_head *list = head->next, *pending = ((void*)0);
 size_t count = 0;

 if (list == head->prev)
  return;


 head->prev->next = ((void*)0);
 do {
  size_t bits;
  struct list_head **tail = &pending;


  for (bits = count; bits & 1; bits >>= 1)
   tail = &(*tail)->prev;

  if (likely(bits)) {
   struct list_head *a = *tail, *b = a->prev;

   a = merge(priv, (cmp_func)cmp, b, a);

   a->prev = b->prev;
   *tail = a;
  }


  list->prev = pending;
  pending = list;
  list = list->next;
  pending->next = ((void*)0);
  count++;
 } while (list);


 list = pending;
 pending = pending->prev;
 for (;;) {
  struct list_head *next = pending->prev;

  if (!next)
   break;
  list = merge(priv, (cmp_func)cmp, pending, list);
  pending = next;
 }

 merge_final(priv, (cmp_func)cmp, head, pending, list);
}
