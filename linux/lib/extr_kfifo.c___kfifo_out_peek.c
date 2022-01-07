
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kfifo {unsigned int in; unsigned int out; } ;


 int kfifo_copy_out (struct __kfifo*,void*,unsigned int,unsigned int) ;

unsigned int __kfifo_out_peek(struct __kfifo *fifo,
  void *buf, unsigned int len)
{
 unsigned int l;

 l = fifo->in - fifo->out;
 if (len > l)
  len = l;

 kfifo_copy_out(fifo, buf, len, fifo->out);
 return len;
}
