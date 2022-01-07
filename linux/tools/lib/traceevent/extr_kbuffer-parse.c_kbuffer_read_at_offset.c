
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {int start; int curr; int subbuffer; } ;


 int kbuffer_load_subbuffer (struct kbuffer*,int ) ;
 void* kbuffer_next_event (struct kbuffer*,unsigned long long*) ;
 void* kbuffer_read_event (struct kbuffer*,unsigned long long*) ;

void *kbuffer_read_at_offset(struct kbuffer *kbuf, int offset,
        unsigned long long *ts)
{
 void *data;

 if (offset < kbuf->start)
  offset = 0;
 else
  offset -= kbuf->start;


 kbuffer_load_subbuffer(kbuf, kbuf->subbuffer);
 data = kbuffer_read_event(kbuf, ts);

 while (kbuf->curr < offset) {
  data = kbuffer_next_event(kbuf, ts);
  if (!data)
   break;
 }

 return data;
}
