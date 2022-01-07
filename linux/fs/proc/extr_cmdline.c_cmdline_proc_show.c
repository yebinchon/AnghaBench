
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int saved_command_line ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,int ) ;

__attribute__((used)) static int cmdline_proc_show(struct seq_file *m, void *v)
{
 seq_puts(m, saved_command_line);
 seq_putc(m, '\n');
 return 0;
}
