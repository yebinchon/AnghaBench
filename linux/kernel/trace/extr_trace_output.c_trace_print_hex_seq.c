
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;


 int min (int,int) ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char const*,int ,unsigned char const*) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

const char *
trace_print_hex_seq(struct trace_seq *p, const unsigned char *buf, int buf_len,
      bool concatenate)
{
 int i;
 const char *ret = trace_seq_buffer_ptr(p);
 const char *fmt = concatenate ? "%*phN" : "%*ph";

 for (i = 0; i < buf_len; i += 16)
  trace_seq_printf(p, fmt, min(buf_len - i, 16), &buf[i]);
 trace_seq_putc(p, 0);

 return ret;
}
