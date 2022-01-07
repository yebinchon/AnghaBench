
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_flags_t ;
struct vm_operations_struct {scalar_t__ pfn_mkwrite; scalar_t__ page_mkwrite; } ;
struct vm_area_struct {int vm_flags; TYPE_1__* vm_file; struct vm_operations_struct* vm_ops; } ;
typedef int pgprot_t ;
struct TYPE_2__ {scalar_t__ f_mapping; } ;


 int CONFIG_MEM_SOFT_DIRTY ;
 scalar_t__ IS_ENABLED (int ) ;
 int VM_PFNMAP ;
 int VM_SHARED ;
 int VM_SOFTDIRTY ;
 int VM_WRITE ;
 scalar_t__ mapping_cap_account_dirty (scalar_t__) ;
 scalar_t__ pgprot_val (int ) ;
 int vm_pgprot_modify (int ,int) ;

int vma_wants_writenotify(struct vm_area_struct *vma, pgprot_t vm_page_prot)
{
 vm_flags_t vm_flags = vma->vm_flags;
 const struct vm_operations_struct *vm_ops = vma->vm_ops;


 if ((vm_flags & (VM_WRITE|VM_SHARED)) != ((VM_WRITE|VM_SHARED)))
  return 0;


 if (vm_ops && (vm_ops->page_mkwrite || vm_ops->pfn_mkwrite))
  return 1;



 if (pgprot_val(vm_page_prot) !=
     pgprot_val(vm_pgprot_modify(vm_page_prot, vm_flags)))
  return 0;


 if (IS_ENABLED(CONFIG_MEM_SOFT_DIRTY) && !(vm_flags & VM_SOFTDIRTY))
  return 1;


 if (vm_flags & VM_PFNMAP)
  return 0;


 return vma->vm_file && vma->vm_file->f_mapping &&
  mapping_cap_account_dirty(vma->vm_file->f_mapping);
}
