
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int units; void* freelist; } ;
struct list_head {int dummy; } ;
typedef int slobidx_t ;
typedef void slob_t ;


 int BUG_ON (int) ;
 unsigned long PAGE_MASK ;
 int PAGE_SIZE ;
 int SLOB_BREAK1 ;
 int SLOB_BREAK2 ;
 int SLOB_UNITS (int) ;
 int ZERO_OR_NULL_PTR (void*) ;
 int __ClearPageSlab (struct page*) ;
 int clear_slob_page_free (struct page*) ;
 struct list_head free_slob_large ;
 struct list_head free_slob_medium ;
 struct list_head free_slob_small ;
 int page_mapcount_reset (struct page*) ;
 int set_slob (void*,int,void*) ;
 int set_slob_page_free (struct page*,struct list_head*) ;
 int slob_free_pages (void*,int ) ;
 int slob_last (void*) ;
 int slob_lock ;
 void* slob_next (void*) ;
 scalar_t__ slob_page_free (struct page*) ;
 int slob_units (void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static void slob_free(void *block, int size)
{
 struct page *sp;
 slob_t *prev, *next, *b = (slob_t *)block;
 slobidx_t units;
 unsigned long flags;
 struct list_head *slob_list;

 if (unlikely(ZERO_OR_NULL_PTR(block)))
  return;
 BUG_ON(!size);

 sp = virt_to_page(block);
 units = SLOB_UNITS(size);

 spin_lock_irqsave(&slob_lock, flags);

 if (sp->units + units == SLOB_UNITS(PAGE_SIZE)) {

  if (slob_page_free(sp))
   clear_slob_page_free(sp);
  spin_unlock_irqrestore(&slob_lock, flags);
  __ClearPageSlab(sp);
  page_mapcount_reset(sp);
  slob_free_pages(b, 0);
  return;
 }

 if (!slob_page_free(sp)) {

  sp->units = units;
  sp->freelist = b;
  set_slob(b, units,
   (void *)((unsigned long)(b +
     SLOB_UNITS(PAGE_SIZE)) & PAGE_MASK));
  if (size < SLOB_BREAK1)
   slob_list = &free_slob_small;
  else if (size < SLOB_BREAK2)
   slob_list = &free_slob_medium;
  else
   slob_list = &free_slob_large;
  set_slob_page_free(sp, slob_list);
  goto out;
 }





 sp->units += units;

 if (b < (slob_t *)sp->freelist) {
  if (b + units == sp->freelist) {
   units += slob_units(sp->freelist);
   sp->freelist = slob_next(sp->freelist);
  }
  set_slob(b, units, sp->freelist);
  sp->freelist = b;
 } else {
  prev = sp->freelist;
  next = slob_next(prev);
  while (b > next) {
   prev = next;
   next = slob_next(prev);
  }

  if (!slob_last(prev) && b + units == next) {
   units += slob_units(next);
   set_slob(b, units, slob_next(next));
  } else
   set_slob(b, units, next);

  if (prev + slob_units(prev) == b) {
   units = slob_units(b) + slob_units(prev);
   set_slob(prev, units, slob_next(b));
  } else
   set_slob(prev, slob_units(prev), b);
 }
out:
 spin_unlock_irqrestore(&slob_lock, flags);
}
