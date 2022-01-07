
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long phys_addr_t ;
typedef int pgprot_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int ENOMEM ;
 int init_mm ;
 scalar_t__ ioremap_pud_range (int *,unsigned long,unsigned long,unsigned long,int ) ;
 scalar_t__ ioremap_try_huge_p4d (int *,unsigned long,unsigned long,unsigned long,int ) ;
 unsigned long p4d_addr_end (unsigned long,unsigned long) ;
 int * p4d_alloc (int *,int *,unsigned long) ;

__attribute__((used)) static inline int ioremap_p4d_range(pgd_t *pgd, unsigned long addr,
  unsigned long end, phys_addr_t phys_addr, pgprot_t prot)
{
 p4d_t *p4d;
 unsigned long next;

 p4d = p4d_alloc(&init_mm, pgd, addr);
 if (!p4d)
  return -ENOMEM;
 do {
  next = p4d_addr_end(addr, end);

  if (ioremap_try_huge_p4d(p4d, addr, next, phys_addr, prot))
   continue;

  if (ioremap_pud_range(p4d, addr, next, phys_addr, prot))
   return -ENOMEM;
 } while (p4d++, phys_addr += (next - addr), addr = next, addr != end);
 return 0;
}
