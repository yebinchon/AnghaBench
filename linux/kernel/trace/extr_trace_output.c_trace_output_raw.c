
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct trace_seq {int dummy; } ;
struct trace_iterator {struct trace_seq seq; } ;


 int trace_handle_return (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,char*) ;
 int trace_seq_vprintf (struct trace_seq*,char*,int ) ;

__attribute__((used)) static int trace_output_raw(struct trace_iterator *iter, char *name,
       char *fmt, va_list ap)
{
 struct trace_seq *s = &iter->seq;

 trace_seq_printf(s, "%s: ", name);
 trace_seq_vprintf(s, fmt, ap);

 return trace_handle_return(s);
}
