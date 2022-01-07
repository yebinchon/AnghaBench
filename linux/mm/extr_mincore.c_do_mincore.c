
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; int vm_mm; int vm_end; } ;
struct TYPE_2__ {int mm; } ;


 unsigned long DIV_ROUND_UP (unsigned long,int ) ;
 long ENOMEM ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int can_do_mincore (struct vm_area_struct*) ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (int ,unsigned long) ;
 int memset (unsigned char*,int,unsigned long) ;
 unsigned long min (int ,unsigned long) ;
 int mincore_walk_ops ;
 int walk_page_range (int ,unsigned long,unsigned long,int *,unsigned char*) ;

__attribute__((used)) static long do_mincore(unsigned long addr, unsigned long pages, unsigned char *vec)
{
 struct vm_area_struct *vma;
 unsigned long end;
 int err;

 vma = find_vma(current->mm, addr);
 if (!vma || addr < vma->vm_start)
  return -ENOMEM;
 end = min(vma->vm_end, addr + (pages << PAGE_SHIFT));
 if (!can_do_mincore(vma)) {
  unsigned long pages = DIV_ROUND_UP(end - addr, PAGE_SIZE);
  memset(vec, 1, pages);
  return pages;
 }
 err = walk_page_range(vma->vm_mm, addr, end, &mincore_walk_ops, vec);
 if (err < 0)
  return err;
 return (end - addr) >> PAGE_SHIFT;
}
