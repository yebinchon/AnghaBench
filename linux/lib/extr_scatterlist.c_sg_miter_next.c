
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_mapping_iter {int __flags; scalar_t__ __offset; int page; scalar_t__ addr; int __remaining; int length; int consumed; int piter; } ;


 int SG_MITER_ATOMIC ;
 scalar_t__ kmap (int ) ;
 scalar_t__ kmap_atomic (int ) ;
 int sg_miter_get_next_page (struct sg_mapping_iter*) ;
 int sg_miter_stop (struct sg_mapping_iter*) ;
 int sg_page_iter_page (int *) ;

bool sg_miter_next(struct sg_mapping_iter *miter)
{
 sg_miter_stop(miter);





 if (!sg_miter_get_next_page(miter))
  return 0;

 miter->page = sg_page_iter_page(&miter->piter);
 miter->consumed = miter->length = miter->__remaining;

 if (miter->__flags & SG_MITER_ATOMIC)
  miter->addr = kmap_atomic(miter->page) + miter->__offset;
 else
  miter->addr = kmap(miter->page) + miter->__offset;

 return 1;
}
