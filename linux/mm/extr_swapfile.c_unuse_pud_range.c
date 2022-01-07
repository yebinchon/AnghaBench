
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pud_t ;
typedef int p4d_t ;


 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,unsigned long) ;
 int unuse_pmd_range (struct vm_area_struct*,int *,unsigned long,unsigned long,unsigned int,int,unsigned long*) ;

__attribute__((used)) static inline int unuse_pud_range(struct vm_area_struct *vma, p4d_t *p4d,
    unsigned long addr, unsigned long end,
    unsigned int type, bool frontswap,
    unsigned long *fs_pages_to_unuse)
{
 pud_t *pud;
 unsigned long next;
 int ret;

 pud = pud_offset(p4d, addr);
 do {
  next = pud_addr_end(addr, end);
  if (pud_none_or_clear_bad(pud))
   continue;
  ret = unuse_pmd_range(vma, pud, addr, next, type,
          frontswap, fs_pages_to_unuse);
  if (ret)
   return ret;
 } while (pud++, addr = next, addr != end);
 return 0;
}
