
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct seq_buf {scalar_t__ size; scalar_t__ len; scalar_t__ buffer; } ;


 int WARN_ON (int) ;
 int seq_buf_set_overflow (struct seq_buf*) ;
 int vsnprintf (scalar_t__,scalar_t__,char const*,int ) ;

int seq_buf_vprintf(struct seq_buf *s, const char *fmt, va_list args)
{
 int len;

 WARN_ON(s->size == 0);

 if (s->len < s->size) {
  len = vsnprintf(s->buffer + s->len, s->size - s->len, fmt, args);
  if (s->len + len < s->size) {
   s->len += len;
   return 0;
  }
 }
 seq_buf_set_overflow(s);
 return -1;
}
