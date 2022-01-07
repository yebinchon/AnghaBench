
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int len; int buffer_size; unsigned char* buffer; } ;


 int TRACE_SEQ_CHECK_RET0 (struct trace_seq*) ;
 int expand_buffer (struct trace_seq*) ;

int trace_seq_putc(struct trace_seq *s, unsigned char c)
{
 TRACE_SEQ_CHECK_RET0(s);

 while (s->len >= (s->buffer_size - 1))
  expand_buffer(s);

 TRACE_SEQ_CHECK_RET0(s);

 s->buffer[s->len++] = c;

 return 1;
}
