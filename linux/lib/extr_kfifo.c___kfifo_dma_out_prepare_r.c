
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct __kfifo {unsigned int in; unsigned int out; } ;


 int BUG_ON (int) ;
 unsigned int __kfifo_max_r (unsigned int,size_t) ;
 unsigned int setup_sgl (struct __kfifo*,struct scatterlist*,int,unsigned int,unsigned int) ;

unsigned int __kfifo_dma_out_prepare_r(struct __kfifo *fifo,
 struct scatterlist *sgl, int nents, unsigned int len, size_t recsize)
{
 BUG_ON(!nents);

 len = __kfifo_max_r(len, recsize);

 if (len + recsize > fifo->in - fifo->out)
  return 0;

 return setup_sgl(fifo, sgl, nents, len, fifo->out + recsize);
}
