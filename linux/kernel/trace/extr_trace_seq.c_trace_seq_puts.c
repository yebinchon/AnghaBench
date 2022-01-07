
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int full; int seq; } ;


 unsigned int TRACE_SEQ_BUF_LEFT (struct trace_seq*) ;
 int __trace_seq_init (struct trace_seq*) ;
 int seq_buf_putmem (int *,char const*,unsigned int) ;
 unsigned int strlen (char const*) ;

void trace_seq_puts(struct trace_seq *s, const char *str)
{
 unsigned int len = strlen(str);

 if (s->full)
  return;

 __trace_seq_init(s);

 if (len > TRACE_SEQ_BUF_LEFT(s)) {
  s->full = 1;
  return;
 }

 seq_buf_putmem(&s->seq, str, len);
}
