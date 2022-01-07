
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct __kfifo {int mask; unsigned int esize; scalar_t__ data; } ;


 unsigned int min (unsigned int,unsigned int) ;
 unsigned int setup_sgl_buf (struct scatterlist*,scalar_t__,int,unsigned int) ;

__attribute__((used)) static unsigned int setup_sgl(struct __kfifo *fifo, struct scatterlist *sgl,
  int nents, unsigned int len, unsigned int off)
{
 unsigned int size = fifo->mask + 1;
 unsigned int esize = fifo->esize;
 unsigned int l;
 unsigned int n;

 off &= fifo->mask;
 if (esize != 1) {
  off *= esize;
  size *= esize;
  len *= esize;
 }
 l = min(len, size - off);

 n = setup_sgl_buf(sgl, fifo->data + off, nents, l);
 n += setup_sgl_buf(sgl + n, fifo->data, nents - n, len - l);

 return n;
}
