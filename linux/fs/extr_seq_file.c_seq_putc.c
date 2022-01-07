
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ count; scalar_t__ size; char* buf; } ;



void seq_putc(struct seq_file *m, char c)
{
 if (m->count >= m->size)
  return;

 m->buf[m->count++] = c;
}
