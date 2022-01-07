
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;


 int trace_seq_printf (struct trace_seq*,char const*,...) ;

__attribute__((used)) static void print_str_to_seq(struct trace_seq *s, const char *format,
        int len_arg, const char *str)
{
 if (len_arg >= 0)
  trace_seq_printf(s, format, len_arg, str);
 else
  trace_seq_printf(s, format, str);
}
