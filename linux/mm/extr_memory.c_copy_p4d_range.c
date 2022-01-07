
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pgd_t ;
typedef int p4d_t ;


 int ENOMEM ;
 scalar_t__ copy_pud_range (struct mm_struct*,struct mm_struct*,int *,int *,struct vm_area_struct*,unsigned long,unsigned long) ;
 unsigned long p4d_addr_end (unsigned long,unsigned long) ;
 int * p4d_alloc (struct mm_struct*,int *,unsigned long) ;
 scalar_t__ p4d_none_or_clear_bad (int *) ;
 int * p4d_offset (int *,unsigned long) ;

__attribute__((used)) static inline int copy_p4d_range(struct mm_struct *dst_mm, struct mm_struct *src_mm,
  pgd_t *dst_pgd, pgd_t *src_pgd, struct vm_area_struct *vma,
  unsigned long addr, unsigned long end)
{
 p4d_t *src_p4d, *dst_p4d;
 unsigned long next;

 dst_p4d = p4d_alloc(dst_mm, dst_pgd, addr);
 if (!dst_p4d)
  return -ENOMEM;
 src_p4d = p4d_offset(src_pgd, addr);
 do {
  next = p4d_addr_end(addr, end);
  if (p4d_none_or_clear_bad(src_p4d))
   continue;
  if (copy_pud_range(dst_mm, src_mm, dst_p4d, src_p4d,
      vma, addr, next))
   return -ENOMEM;
 } while (dst_p4d++, src_p4d++, addr = next, addr != end);
 return 0;
}
