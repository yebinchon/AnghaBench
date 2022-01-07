
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pgprot_t ;
typedef int p4d_t ;


 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;
 int remap_pmd_range (struct mm_struct*,int *,unsigned long,unsigned long,unsigned long,int ) ;

__attribute__((used)) static inline int remap_pud_range(struct mm_struct *mm, p4d_t *p4d,
   unsigned long addr, unsigned long end,
   unsigned long pfn, pgprot_t prot)
{
 pud_t *pud;
 unsigned long next;
 int err;

 pfn -= addr >> PAGE_SHIFT;
 pud = pud_alloc(mm, p4d, addr);
 if (!pud)
  return -ENOMEM;
 do {
  next = pud_addr_end(addr, end);
  err = remap_pmd_range(mm, pud, addr, next,
    pfn + (addr >> PAGE_SHIFT), prot);
  if (err)
   return err;
 } while (pud++, addr = next, addr != end);
 return 0;
}
