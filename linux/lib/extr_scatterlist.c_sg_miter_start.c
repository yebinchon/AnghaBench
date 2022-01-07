
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_mapping_iter {unsigned int __flags; int piter; } ;
struct scatterlist {int dummy; } ;


 unsigned int SG_MITER_FROM_SG ;
 unsigned int SG_MITER_TO_SG ;
 int WARN_ON (int) ;
 int __sg_page_iter_start (int *,struct scatterlist*,unsigned int,int ) ;
 int memset (struct sg_mapping_iter*,int ,int) ;

void sg_miter_start(struct sg_mapping_iter *miter, struct scatterlist *sgl,
      unsigned int nents, unsigned int flags)
{
 memset(miter, 0, sizeof(struct sg_mapping_iter));

 __sg_page_iter_start(&miter->piter, sgl, nents, 0);
 WARN_ON(!(flags & (SG_MITER_TO_SG | SG_MITER_FROM_SG)));
 miter->__flags = flags;
}
