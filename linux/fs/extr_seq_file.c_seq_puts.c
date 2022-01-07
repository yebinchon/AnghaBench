
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ count; scalar_t__ size; scalar_t__ buf; } ;


 int memcpy (scalar_t__,char const*,int) ;
 int seq_set_overflow (struct seq_file*) ;
 int strlen (char const*) ;

void seq_puts(struct seq_file *m, const char *s)
{
 int len = strlen(s);

 if (m->count + len >= m->size) {
  seq_set_overflow(m);
  return;
 }
 memcpy(m->buf + m->count, s, len);
 m->count += len;
}
