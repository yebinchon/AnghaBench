
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int pad_until; int count; scalar_t__ size; scalar_t__ buf; } ;


 int memset (scalar_t__,char,int) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_set_overflow (struct seq_file*) ;

void seq_pad(struct seq_file *m, char c)
{
 int size = m->pad_until - m->count;
 if (size > 0) {
  if (size + m->count > m->size) {
   seq_set_overflow(m);
   return;
  }
  memset(m->buf + m->count, ' ', size);
  m->count += size;
 }
 if (c)
  seq_putc(m, c);
}
