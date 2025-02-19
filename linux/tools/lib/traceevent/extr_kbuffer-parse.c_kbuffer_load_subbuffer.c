
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {int flags; int start; unsigned int size; int lost_events; scalar_t__ next; scalar_t__ index; void* data; scalar_t__ curr; int timestamp; void* subbuffer; } ;


 unsigned int COMMIT_MASK ;
 int KBUFFER_FL_LONG_8 ;
 unsigned long long MISSING_EVENTS ;
 unsigned long long MISSING_STORED ;
 int next_event (struct kbuffer*) ;
 int read_8 (struct kbuffer*,void*) ;
 void* read_long (struct kbuffer*,void*) ;

int kbuffer_load_subbuffer(struct kbuffer *kbuf, void *subbuffer)
{
 unsigned long long flags;
 void *ptr = subbuffer;

 if (!kbuf || !subbuffer)
  return -1;

 kbuf->subbuffer = subbuffer;

 kbuf->timestamp = read_8(kbuf, ptr);
 ptr += 8;

 kbuf->curr = 0;

 if (kbuf->flags & KBUFFER_FL_LONG_8)
  kbuf->start = 16;
 else
  kbuf->start = 12;

 kbuf->data = subbuffer + kbuf->start;

 flags = read_long(kbuf, ptr);
 kbuf->size = (unsigned int)flags & COMMIT_MASK;

 if (flags & MISSING_EVENTS) {
  if (flags & MISSING_STORED) {
   ptr = kbuf->data + kbuf->size;
   kbuf->lost_events = read_long(kbuf, ptr);
  } else
   kbuf->lost_events = -1;
 } else
  kbuf->lost_events = 0;

 kbuf->index = 0;
 kbuf->next = 0;

 next_event(kbuf);

 return 0;
}
