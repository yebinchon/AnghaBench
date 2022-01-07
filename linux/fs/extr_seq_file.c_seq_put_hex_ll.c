
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
struct seq_file {unsigned int count; unsigned int size; int * buf; } ;


 int __builtin_clzll (unsigned long long) ;
 int * hex_asc ;
 int seq_putc (struct seq_file*,char const) ;
 int seq_puts (struct seq_file*,char const*) ;
 int seq_set_overflow (struct seq_file*) ;

void seq_put_hex_ll(struct seq_file *m, const char *delimiter,
    unsigned long long v, unsigned int width)
{
 unsigned int len;
 int i;

 if (delimiter && delimiter[0]) {
  if (delimiter[1] == 0)
   seq_putc(m, delimiter[0]);
  else
   seq_puts(m, delimiter);
 }


 if (v == 0)
  len = 1;
 else
  len = (sizeof(v) * 8 - __builtin_clzll(v) + 3) / 4;

 if (len < width)
  len = width;

 if (m->count + len > m->size) {
  seq_set_overflow(m);
  return;
 }

 for (i = len - 1; i >= 0; i--) {
  m->buf[m->count + i] = hex_asc[0xf & v];
  v = v >> 4;
 }
 m->count += len;
}
