
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct vm_area_struct* vm_next; } ;
struct mm_struct {struct vm_area_struct* mmap; } ;


 struct vm_area_struct* vmacache_find_exact (struct mm_struct*,unsigned long,unsigned long) ;
 int vmacache_update (unsigned long,struct vm_area_struct*) ;

__attribute__((used)) static struct vm_area_struct *find_vma_exact(struct mm_struct *mm,
          unsigned long addr,
          unsigned long len)
{
 struct vm_area_struct *vma;
 unsigned long end = addr + len;


 vma = vmacache_find_exact(mm, addr, end);
 if (vma)
  return vma;



 for (vma = mm->mmap; vma; vma = vma->vm_next) {
  if (vma->vm_start < addr)
   continue;
  if (vma->vm_start > addr)
   return ((void*)0);
  if (vma->vm_end == end) {
   vmacache_update(addr, vma);
   return vma;
  }
 }

 return ((void*)0);
}
