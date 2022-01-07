
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_region {int vm_usage; unsigned long vm_start; unsigned long vm_top; unsigned long vm_end; } ;
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct vm_region* vm_region; } ;
struct mm_struct {int dummy; } ;


 int BUG_ON (int) ;
 int add_nommu_region (struct vm_region*) ;
 int add_vma_to_mm (struct mm_struct*,struct vm_area_struct*) ;
 int delete_nommu_region (struct vm_region*) ;
 int delete_vma_from_mm (struct vm_area_struct*) ;
 int down_write (int *) ;
 int free_page_series (unsigned long,unsigned long) ;
 int nommu_region_sem ;
 int up_write (int *) ;

__attribute__((used)) static int shrink_vma(struct mm_struct *mm,
        struct vm_area_struct *vma,
        unsigned long from, unsigned long to)
{
 struct vm_region *region;



 delete_vma_from_mm(vma);
 if (from > vma->vm_start)
  vma->vm_end = from;
 else
  vma->vm_start = to;
 add_vma_to_mm(mm, vma);


 region = vma->vm_region;
 BUG_ON(region->vm_usage != 1);

 down_write(&nommu_region_sem);
 delete_nommu_region(region);
 if (from > region->vm_start) {
  to = region->vm_top;
  region->vm_top = region->vm_end = from;
 } else {
  region->vm_start = to;
 }
 add_nommu_region(region);
 up_write(&nommu_region_sem);

 free_page_series(from, to);
 return 0;
}
