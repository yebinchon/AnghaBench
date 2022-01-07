
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct list_head {struct list_head* prev; struct list_head* next; } ;
typedef scalar_t__ (* cmp_func ) (void*,struct list_head*,struct list_head*) ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) __attribute__((nonnull(2,3,4,5)))
static void merge_final(void *priv, cmp_func cmp, struct list_head *head,
   struct list_head *a, struct list_head *b)
{
 struct list_head *tail = head;
 u8 count = 0;

 for (;;) {

  if (cmp(priv, a, b) <= 0) {
   tail->next = a;
   a->prev = tail;
   tail = a;
   a = a->next;
   if (!a)
    break;
  } else {
   tail->next = b;
   b->prev = tail;
   tail = b;
   b = b->next;
   if (!b) {
    b = a;
    break;
   }
  }
 }


 tail->next = b;
 do {







  if (unlikely(!++count))
   cmp(priv, b, b);
  b->prev = tail;
  tail = b;
  b = b->next;
 } while (b);


 tail->next = head;
 head->prev = tail;
}
