
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int p4d_t ;


 int ENOMEM ;
 unsigned long HPAGE_PUD_SIZE ;
 int VM_BUG_ON_VMA (int,struct vm_area_struct*) ;
 int copy_huge_pud (struct mm_struct*,struct mm_struct*,int *,int *,unsigned long,struct vm_area_struct*) ;
 scalar_t__ copy_pmd_range (struct mm_struct*,struct mm_struct*,int *,int *,struct vm_area_struct*,unsigned long,unsigned long) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;
 scalar_t__ pud_devmap (int ) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,unsigned long) ;
 scalar_t__ pud_trans_huge (int ) ;

__attribute__((used)) static inline int copy_pud_range(struct mm_struct *dst_mm, struct mm_struct *src_mm,
  p4d_t *dst_p4d, p4d_t *src_p4d, struct vm_area_struct *vma,
  unsigned long addr, unsigned long end)
{
 pud_t *src_pud, *dst_pud;
 unsigned long next;

 dst_pud = pud_alloc(dst_mm, dst_p4d, addr);
 if (!dst_pud)
  return -ENOMEM;
 src_pud = pud_offset(src_p4d, addr);
 do {
  next = pud_addr_end(addr, end);
  if (pud_trans_huge(*src_pud) || pud_devmap(*src_pud)) {
   int err;

   VM_BUG_ON_VMA(next-addr != HPAGE_PUD_SIZE, vma);
   err = copy_huge_pud(dst_mm, src_mm,
         dst_pud, src_pud, addr, vma);
   if (err == -ENOMEM)
    return -ENOMEM;
   if (!err)
    continue;

  }
  if (pud_none_or_clear_bad(src_pud))
   continue;
  if (copy_pmd_range(dst_mm, src_mm, dst_pud, src_pud,
      vma, addr, next))
   return -ENOMEM;
 } while (dst_pud++, src_pud++, addr = next, addr != end);
 return 0;
}
