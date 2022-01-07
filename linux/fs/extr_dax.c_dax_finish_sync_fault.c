
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {TYPE_1__* vma; scalar_t__ pgoff; } ;
typedef int pfn_t ;
typedef int loff_t ;
typedef enum page_entry_size { ____Placeholder_page_entry_size } page_entry_size ;
struct TYPE_2__ {int vm_file; } ;


 int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int VM_FAULT_SIGBUS ;
 int dax_insert_pfn_mkwrite (struct vm_fault*,int ,unsigned int) ;
 unsigned int pe_order (int) ;
 int vfs_fsync_range (int ,int,int,int) ;

vm_fault_t dax_finish_sync_fault(struct vm_fault *vmf,
  enum page_entry_size pe_size, pfn_t pfn)
{
 int err;
 loff_t start = ((loff_t)vmf->pgoff) << PAGE_SHIFT;
 unsigned int order = pe_order(pe_size);
 size_t len = PAGE_SIZE << order;

 err = vfs_fsync_range(vmf->vma->vm_file, start, start + len - 1, 1);
 if (err)
  return VM_FAULT_SIGBUS;
 return dax_insert_pfn_mkwrite(vmf, pfn, order);
}
