
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kfifo {scalar_t__ in; scalar_t__ out; } ;


 unsigned int kfifo_out_copy_r (struct __kfifo*,void*,unsigned int,size_t,unsigned int*) ;

unsigned int __kfifo_out_peek_r(struct __kfifo *fifo, void *buf,
  unsigned int len, size_t recsize)
{
 unsigned int n;

 if (fifo->in == fifo->out)
  return 0;

 return kfifo_out_copy_r(fifo, buf, len, recsize, &n);
}
