
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct seq_file {int dummy; } ;
typedef int CMD_PREFIX ;


 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void tracing_err_log_show_pos(struct seq_file *m, u8 pos)
{
 u8 i;

 for (i = 0; i < sizeof(CMD_PREFIX) - 1; i++)
  seq_putc(m, ' ');
 for (i = 0; i < pos; i++)
  seq_putc(m, ' ');
 seq_puts(m, "^\n");
}
