
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;


 int ERESTARTSYS ;
 scalar_t__ PAGE_SIZE ;
 int break_ksm (struct vm_area_struct*,unsigned long) ;
 int current ;
 scalar_t__ ksm_test_exit (int ) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static int unmerge_ksm_pages(struct vm_area_struct *vma,
        unsigned long start, unsigned long end)
{
 unsigned long addr;
 int err = 0;

 for (addr = start; addr < end && !err; addr += PAGE_SIZE) {
  if (ksm_test_exit(vma->vm_mm))
   break;
  if (signal_pending(current))
   err = -ERESTARTSYS;
  else
   err = break_ksm(vma, addr);
 }
 return err;
}
