
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int full; int seq; } ;


 int TRACE_SEQ_BUF_LEFT (struct trace_seq*) ;
 int __trace_seq_init (struct trace_seq*) ;
 int seq_buf_putc (int *,unsigned char) ;

void trace_seq_putc(struct trace_seq *s, unsigned char c)
{
 if (s->full)
  return;

 __trace_seq_init(s);

 if (TRACE_SEQ_BUF_LEFT(s) < 1) {
  s->full = 1;
  return;
 }

 seq_buf_putc(&s->seq, c);
}
