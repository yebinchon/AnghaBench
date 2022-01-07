
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_mapping_iter {int addr; int length; } ;
struct scatterlist {int dummy; } ;
typedef int off_t ;


 unsigned int SG_MITER_ATOMIC ;
 unsigned int SG_MITER_TO_SG ;
 int memset (int ,int ,unsigned int) ;
 unsigned int min (int ,size_t) ;
 scalar_t__ sg_miter_next (struct sg_mapping_iter*) ;
 int sg_miter_skip (struct sg_mapping_iter*,int ) ;
 int sg_miter_start (struct sg_mapping_iter*,struct scatterlist*,unsigned int,unsigned int) ;
 int sg_miter_stop (struct sg_mapping_iter*) ;

size_t sg_zero_buffer(struct scatterlist *sgl, unsigned int nents,
         size_t buflen, off_t skip)
{
 unsigned int offset = 0;
 struct sg_mapping_iter miter;
 unsigned int sg_flags = SG_MITER_ATOMIC | SG_MITER_TO_SG;

 sg_miter_start(&miter, sgl, nents, sg_flags);

 if (!sg_miter_skip(&miter, skip))
  return 0;

 while (offset < buflen && sg_miter_next(&miter)) {
  unsigned int len;

  len = min(miter.length, buflen - offset);
  memset(miter.addr, 0, len);

  offset += len;
 }

 sg_miter_stop(&miter);
 return offset;
}
