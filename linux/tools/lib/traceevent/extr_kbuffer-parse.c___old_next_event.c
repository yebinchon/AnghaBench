
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {scalar_t__ curr; scalar_t__ next; scalar_t__ size; } ;


 int OLD_RINGBUF_TYPE_PADDING ;
 int OLD_RINGBUF_TYPE_TIME_EXTEND ;
 int old_update_pointers (struct kbuffer*) ;

__attribute__((used)) static int __old_next_event(struct kbuffer *kbuf)
{
 int type;

 do {
  kbuf->curr = kbuf->next;
  if (kbuf->next >= kbuf->size)
   return -1;
  type = old_update_pointers(kbuf);
 } while (type == OLD_RINGBUF_TYPE_TIME_EXTEND || type == OLD_RINGBUF_TYPE_PADDING);

 return 0;
}
