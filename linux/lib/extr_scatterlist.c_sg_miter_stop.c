
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_mapping_iter {scalar_t__ consumed; scalar_t__ length; int __flags; int * addr; int * page; int __remaining; int __offset; } ;


 int PageSlab (int *) ;
 int SG_MITER_ATOMIC ;
 int SG_MITER_TO_SG ;
 int WARN_ON (int) ;
 int WARN_ON_ONCE (int ) ;
 int flush_kernel_dcache_page (int *) ;
 int kunmap (int *) ;
 int kunmap_atomic (int *) ;
 int preemptible () ;

void sg_miter_stop(struct sg_mapping_iter *miter)
{
 WARN_ON(miter->consumed > miter->length);


 if (miter->addr) {
  miter->__offset += miter->consumed;
  miter->__remaining -= miter->consumed;

  if ((miter->__flags & SG_MITER_TO_SG) &&
      !PageSlab(miter->page))
   flush_kernel_dcache_page(miter->page);

  if (miter->__flags & SG_MITER_ATOMIC) {
   WARN_ON_ONCE(preemptible());
   kunmap_atomic(miter->addr);
  } else
   kunmap(miter->page);

  miter->page = ((void*)0);
  miter->addr = ((void*)0);
  miter->length = 0;
  miter->consumed = 0;
 }
}
