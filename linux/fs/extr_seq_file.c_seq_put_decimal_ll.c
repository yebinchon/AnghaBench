
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ count; scalar_t__ size; char* buf; } ;


 int num_to_str (long long*,int,long long,int ) ;
 int seq_putc (struct seq_file*,char const) ;
 int seq_puts (struct seq_file*,char const*) ;
 int seq_set_overflow (struct seq_file*) ;

void seq_put_decimal_ll(struct seq_file *m, const char *delimiter, long long num)
{
 int len;

 if (m->count + 3 >= m->size)
  goto overflow;

 if (delimiter && delimiter[0]) {
  if (delimiter[1] == 0)
   seq_putc(m, delimiter[0]);
  else
   seq_puts(m, delimiter);
 }

 if (m->count + 2 >= m->size)
  goto overflow;

 if (num < 0) {
  m->buf[m->count++] = '-';
  num = -num;
 }

 if (num < 10) {
  m->buf[m->count++] = num + '0';
  return;
 }

 len = num_to_str(m->buf + m->count, m->size - m->count, num, 0);
 if (!len)
  goto overflow;

 m->count += len;
 return;

overflow:
 seq_set_overflow(m);
}
