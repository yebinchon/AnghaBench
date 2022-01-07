
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char const*) ;

__attribute__((used)) static int
event_trigger_print(const char *name, struct seq_file *m,
      void *data, char *filter_str)
{
 long count = (long)data;

 seq_puts(m, name);

 if (count == -1)
  seq_puts(m, ":unlimited");
 else
  seq_printf(m, ":count=%ld", count);

 if (filter_str)
  seq_printf(m, " if %s\n", filter_str);
 else
  seq_putc(m, '\n');

 return 0;
}
