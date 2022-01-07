
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ units; void* freelist; } ;
typedef int slobidx_t ;
typedef void slob_t ;


 int ALIGN (unsigned long,int) ;
 int SLOB_UNITS (size_t) ;
 int clear_slob_page_free (struct page*) ;
 int set_slob (void*,int,void*) ;
 scalar_t__ slob_last (void*) ;
 void* slob_next (void*) ;
 int slob_units (void*) ;

__attribute__((used)) static void *slob_page_alloc(struct page *sp, size_t size, int align,
         int align_offset, bool *page_removed_from_list)
{
 slob_t *prev, *cur, *aligned = ((void*)0);
 int delta = 0, units = SLOB_UNITS(size);

 *page_removed_from_list = 0;
 for (prev = ((void*)0), cur = sp->freelist; ; prev = cur, cur = slob_next(cur)) {
  slobidx_t avail = slob_units(cur);
  if (align) {
   aligned = (slob_t *)
    (ALIGN((unsigned long)cur + align_offset, align)
     - align_offset);
   delta = aligned - cur;
  }
  if (avail >= units + delta) {
   slob_t *next;

   if (delta) {
    next = slob_next(cur);
    set_slob(aligned, avail - delta, next);
    set_slob(cur, delta, aligned);
    prev = cur;
    cur = aligned;
    avail = slob_units(cur);
   }

   next = slob_next(cur);
   if (avail == units) {
    if (prev)
     set_slob(prev, slob_units(prev), next);
    else
     sp->freelist = next;
   } else {
    if (prev)
     set_slob(prev, slob_units(prev), cur + units);
    else
     sp->freelist = cur + units;
    set_slob(cur + units, avail - units, next);
   }

   sp->units -= units;
   if (!sp->units) {
    clear_slob_page_free(sp);
    *page_removed_from_list = 1;
   }
   return cur;
  }
  if (slob_last(cur))
   return ((void*)0);
 }
}
