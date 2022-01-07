
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int KSYM_SYMBOL_LEN ;
 int seq_printf (struct seq_file*,char*,...) ;
 int sprint_symbol (char*,unsigned long) ;

__attribute__((used)) static void hist_trigger_stacktrace_print(struct seq_file *m,
       unsigned long *stacktrace_entries,
       unsigned int max_entries)
{
 char str[KSYM_SYMBOL_LEN];
 unsigned int spaces = 8;
 unsigned int i;

 for (i = 0; i < max_entries; i++) {
  if (!stacktrace_entries[i])
   return;

  seq_printf(m, "%*c", 1 + spaces, ' ');
  sprint_symbol(str, stacktrace_entries[i]);
  seq_printf(m, "%s\n", str);
 }
}
