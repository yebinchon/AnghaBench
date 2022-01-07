
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_putc (struct seq_file*,char) ;

void ima_putc(struct seq_file *m, void *data, int datalen)
{
 while (datalen--)
  seq_putc(m, *(char *)data++);
}
