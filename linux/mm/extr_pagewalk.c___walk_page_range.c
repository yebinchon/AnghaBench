
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct mm_walk {TYPE_1__* ops; struct vm_area_struct* vma; } ;
struct TYPE_2__ {scalar_t__ hugetlb_entry; } ;


 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 int walk_hugetlb_range (unsigned long,unsigned long,struct mm_walk*) ;
 int walk_pgd_range (unsigned long,unsigned long,struct mm_walk*) ;

__attribute__((used)) static int __walk_page_range(unsigned long start, unsigned long end,
   struct mm_walk *walk)
{
 int err = 0;
 struct vm_area_struct *vma = walk->vma;

 if (vma && is_vm_hugetlb_page(vma)) {
  if (walk->ops->hugetlb_entry)
   err = walk_hugetlb_range(start, end, walk);
 } else
  err = walk_pgd_range(start, end, walk);

 return err;
}
