
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pgd_t ;
typedef int p4d_t ;


 unsigned long p4d_addr_end (unsigned long,unsigned long) ;
 scalar_t__ p4d_none_or_clear_bad (int *) ;
 int * p4d_offset (int *,unsigned long) ;
 int unuse_pud_range (struct vm_area_struct*,int *,unsigned long,unsigned long,unsigned int,int,unsigned long*) ;

__attribute__((used)) static inline int unuse_p4d_range(struct vm_area_struct *vma, pgd_t *pgd,
    unsigned long addr, unsigned long end,
    unsigned int type, bool frontswap,
    unsigned long *fs_pages_to_unuse)
{
 p4d_t *p4d;
 unsigned long next;
 int ret;

 p4d = p4d_offset(pgd, addr);
 do {
  next = p4d_addr_end(addr, end);
  if (p4d_none_or_clear_bad(p4d))
   continue;
  ret = unuse_pud_range(vma, p4d, addr, next, type,
          frontswap, fs_pages_to_unuse);
  if (ret)
   return ret;
 } while (p4d++, addr = next, addr != end);
 return 0;
}
