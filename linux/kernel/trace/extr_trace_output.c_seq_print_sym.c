
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;


 int KSYM_SYMBOL_LEN ;
 int kallsyms_lookup (unsigned long,int *,int *,int *,char*) ;
 char* kretprobed (char*) ;
 int sprint_symbol (char*,unsigned long) ;
 scalar_t__ strlen (char const*) ;
 int trace_seq_printf (struct trace_seq*,char*,unsigned long) ;
 int trace_seq_puts (struct trace_seq*,char const*) ;

__attribute__((used)) static void
seq_print_sym(struct trace_seq *s, unsigned long address, bool offset)
{
 trace_seq_printf(s, "0x%08lx", address);
}
