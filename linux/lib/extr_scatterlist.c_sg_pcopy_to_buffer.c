
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
typedef int off_t ;


 size_t sg_copy_buffer (struct scatterlist*,unsigned int,void*,size_t,int ,int) ;

size_t sg_pcopy_to_buffer(struct scatterlist *sgl, unsigned int nents,
     void *buf, size_t buflen, off_t skip)
{
 return sg_copy_buffer(sgl, nents, buf, buflen, skip, 1);
}
