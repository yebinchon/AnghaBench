
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; } ;
typedef scalar_t__ (* cmp_func ) (void*,struct list_head*,struct list_head*) ;



__attribute__((used)) __attribute__((nonnull(2,3,4)))
static struct list_head *merge(void *priv, cmp_func cmp,
    struct list_head *a, struct list_head *b)
{
 struct list_head *head, **tail = &head;

 for (;;) {

  if (cmp(priv, a, b) <= 0) {
   *tail = a;
   tail = &a->next;
   a = a->next;
   if (!a) {
    *tail = b;
    break;
   }
  } else {
   *tail = b;
   tail = &b->next;
   b = b->next;
   if (!b) {
    *tail = a;
    break;
   }
  }
 }
 return head;
}
