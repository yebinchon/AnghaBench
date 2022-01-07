
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_mm; } ;
typedef int pgd_t ;


 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pgd_none_or_clear_bad (int *) ;
 int * pgd_offset (int ,unsigned long) ;
 int unuse_p4d_range (struct vm_area_struct*,int *,unsigned long,unsigned long,unsigned int,int,unsigned long*) ;

__attribute__((used)) static int unuse_vma(struct vm_area_struct *vma, unsigned int type,
       bool frontswap, unsigned long *fs_pages_to_unuse)
{
 pgd_t *pgd;
 unsigned long addr, end, next;
 int ret;

 addr = vma->vm_start;
 end = vma->vm_end;

 pgd = pgd_offset(vma->vm_mm, addr);
 do {
  next = pgd_addr_end(addr, end);
  if (pgd_none_or_clear_bad(pgd))
   continue;
  ret = unuse_p4d_range(vma, pgd, addr, next, type,
          frontswap, fs_pages_to_unuse);
  if (ret)
   return ret;
 } while (pgd++, addr = next, addr != end);
 return 0;
}
