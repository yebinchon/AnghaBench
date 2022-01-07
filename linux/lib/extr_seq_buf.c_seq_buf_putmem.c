
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_buf {scalar_t__ size; scalar_t__ len; scalar_t__ buffer; } ;


 int WARN_ON (int) ;
 int memcpy (scalar_t__,void const*,unsigned int) ;
 scalar_t__ seq_buf_can_fit (struct seq_buf*,unsigned int) ;
 int seq_buf_set_overflow (struct seq_buf*) ;

int seq_buf_putmem(struct seq_buf *s, const void *mem, unsigned int len)
{
 WARN_ON(s->size == 0);

 if (seq_buf_can_fit(s, len)) {
  memcpy(s->buffer + s->len, mem, len);
  s->len += len;
  return 0;
 }
 seq_buf_set_overflow(s);
 return -1;
}
