
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int buffer_size; int len; scalar_t__ buffer; } ;


 int TRACE_SEQ_CHECK_RET0 (struct trace_seq*) ;
 int expand_buffer (struct trace_seq*) ;
 int memcpy (scalar_t__,char const*,int) ;
 int strlen (char const*) ;

int trace_seq_puts(struct trace_seq *s, const char *str)
{
 int len;

 TRACE_SEQ_CHECK_RET0(s);

 len = strlen(str);

 while (len > ((s->buffer_size - 1) - s->len))
  expand_buffer(s);

 TRACE_SEQ_CHECK_RET0(s);

 memcpy(s->buffer + s->len, str, len);
 s->len += len;

 return len;
}
