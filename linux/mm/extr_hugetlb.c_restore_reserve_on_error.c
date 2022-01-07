
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct hstate {int dummy; } ;


 int ClearPagePrivate (struct page*) ;
 int PagePrivate (struct page*) ;
 scalar_t__ unlikely (int) ;
 long vma_add_reservation (struct hstate*,struct vm_area_struct*,unsigned long) ;
 int vma_end_reservation (struct hstate*,struct vm_area_struct*,unsigned long) ;
 long vma_needs_reservation (struct hstate*,struct vm_area_struct*,unsigned long) ;

__attribute__((used)) static void restore_reserve_on_error(struct hstate *h,
   struct vm_area_struct *vma, unsigned long address,
   struct page *page)
{
 if (unlikely(PagePrivate(page))) {
  long rc = vma_needs_reservation(h, vma, address);

  if (unlikely(rc < 0)) {
   ClearPagePrivate(page);
  } else if (rc) {
   rc = vma_add_reservation(h, vma, address);
   if (unlikely(rc < 0))




    ClearPagePrivate(page);
  } else
   vma_end_reservation(h, vma, address);
 }
}
