
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kfifo {unsigned int in; } ;


 unsigned int __kfifo_max_r (unsigned int,size_t) ;
 int __kfifo_poke_n (struct __kfifo*,unsigned int,size_t) ;

void __kfifo_dma_in_finish_r(struct __kfifo *fifo,
 unsigned int len, size_t recsize)
{
 len = __kfifo_max_r(len, recsize);
 __kfifo_poke_n(fifo, len, recsize);
 fifo->in += len + recsize;
}
