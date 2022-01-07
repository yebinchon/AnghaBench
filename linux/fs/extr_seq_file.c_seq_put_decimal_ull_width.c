
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ count; scalar_t__ size; scalar_t__ buf; } ;


 int num_to_str (scalar_t__,scalar_t__,unsigned long long,unsigned int) ;
 int seq_putc (struct seq_file*,char const) ;
 int seq_puts (struct seq_file*,char const*) ;
 int seq_set_overflow (struct seq_file*) ;

void seq_put_decimal_ull_width(struct seq_file *m, const char *delimiter,
    unsigned long long num, unsigned int width)
{
 int len;

 if (m->count + 2 >= m->size)
  goto overflow;

 if (delimiter && delimiter[0]) {
  if (delimiter[1] == 0)
   seq_putc(m, delimiter[0]);
  else
   seq_puts(m, delimiter);
 }

 if (!width)
  width = 1;

 if (m->count + width >= m->size)
  goto overflow;

 len = num_to_str(m->buf + m->count, m->size - m->count, num, width);
 if (!len)
  goto overflow;

 m->count += len;
 return;

overflow:
 seq_set_overflow(m);
}
