
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ readpos; } ;
struct trace_seq {scalar_t__ buffer; TYPE_1__ seq; } ;
typedef size_t ssize_t ;


 size_t EBUSY ;
 int memcpy (void*,scalar_t__,size_t) ;
 scalar_t__ trace_seq_used (struct trace_seq*) ;

__attribute__((used)) static ssize_t trace_seq_to_buffer(struct trace_seq *s, void *buf, size_t cnt)
{
 int len;

 if (trace_seq_used(s) <= s->seq.readpos)
  return -EBUSY;

 len = trace_seq_used(s) - s->seq.readpos;
 if (cnt > len)
  cnt = len;
 memcpy(buf, s->buffer + s->seq.readpos, cnt);

 s->seq.readpos += cnt;
 return cnt;
}
