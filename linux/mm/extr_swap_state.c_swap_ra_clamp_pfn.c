
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;


 int PFN_DOWN (unsigned long) ;
 unsigned long PMD_MASK ;
 unsigned long PMD_SIZE ;
 unsigned long max3 (unsigned long,int ,int ) ;
 unsigned long min3 (unsigned long,int ,int ) ;

__attribute__((used)) static inline void swap_ra_clamp_pfn(struct vm_area_struct *vma,
         unsigned long faddr,
         unsigned long lpfn,
         unsigned long rpfn,
         unsigned long *start,
         unsigned long *end)
{
 *start = max3(lpfn, PFN_DOWN(vma->vm_start),
        PFN_DOWN(faddr & PMD_MASK));
 *end = min3(rpfn, PFN_DOWN(vma->vm_end),
      PFN_DOWN((faddr & PMD_MASK) + PMD_SIZE));
}
