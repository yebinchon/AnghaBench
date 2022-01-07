
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kfifo {unsigned int out; } ;


 unsigned int __kfifo_peek_n (struct __kfifo*,size_t) ;

void __kfifo_dma_out_finish_r(struct __kfifo *fifo, size_t recsize)
{
 unsigned int len;

 len = __kfifo_peek_n(fifo, recsize);
 fifo->out += len + recsize;
}
