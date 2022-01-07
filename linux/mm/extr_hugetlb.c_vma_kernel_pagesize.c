
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_ops; } ;
struct TYPE_2__ {unsigned long (* pagesize ) (struct vm_area_struct*) ;} ;


 unsigned long PAGE_SIZE ;
 unsigned long stub1 (struct vm_area_struct*) ;

unsigned long vma_kernel_pagesize(struct vm_area_struct *vma)
{
 if (vma->vm_ops && vma->vm_ops->pagesize)
  return vma->vm_ops->pagesize(vma);
 return PAGE_SIZE;
}
