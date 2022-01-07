
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int full; int seq; } ;


 unsigned int TRACE_SEQ_BUF_LEFT (struct trace_seq*) ;
 int __trace_seq_init (struct trace_seq*) ;
 int seq_buf_putmem (int *,void const*,unsigned int) ;

void trace_seq_putmem(struct trace_seq *s, const void *mem, unsigned int len)
{
 if (s->full)
  return;

 __trace_seq_init(s);

 if (len > TRACE_SEQ_BUF_LEFT(s)) {
  s->full = 1;
  return;
 }

 seq_buf_putmem(&s->seq, mem, len);
}
