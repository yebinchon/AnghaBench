
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct __kfifo {int in; } ;


 unsigned int kfifo_unused (struct __kfifo*) ;
 unsigned int setup_sgl (struct __kfifo*,struct scatterlist*,int,unsigned int,int ) ;

unsigned int __kfifo_dma_in_prepare(struct __kfifo *fifo,
  struct scatterlist *sgl, int nents, unsigned int len)
{
 unsigned int l;

 l = kfifo_unused(fifo);
 if (len > l)
  len = l;

 return setup_sgl(fifo, sgl, nents, len, fifo->in);
}
