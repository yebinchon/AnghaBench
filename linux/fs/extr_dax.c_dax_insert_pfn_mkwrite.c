
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {int address; TYPE_2__* vma; int pgoff; } ;
struct address_space {int host; int i_pages; } ;
typedef int pfn_t ;
struct TYPE_4__ {TYPE_1__* vm_file; } ;
struct TYPE_3__ {struct address_space* f_mapping; } ;


 int FAULT_FLAG_WRITE ;
 int PAGECACHE_TAG_DIRTY ;
 unsigned int PMD_ORDER ;
 int VM_FAULT_FALLBACK ;
 int VM_FAULT_NOPAGE ;
 int XA_STATE_ORDER (int ,int *,int ,unsigned int) ;
 scalar_t__ dax_is_conflict (void*) ;
 int dax_is_pte_entry (void*) ;
 int dax_lock_entry (int *,void*) ;
 int dax_unlock_entry (int *,void*) ;
 void* get_unlocked_entry (int *,unsigned int) ;
 int put_unlocked_entry (int *,void*) ;
 int trace_dax_insert_pfn_mkwrite (int ,struct vm_fault*,int ) ;
 int trace_dax_insert_pfn_mkwrite_no_entry (int ,struct vm_fault*,int ) ;
 int vmf_insert_mixed_mkwrite (TYPE_2__*,int ,int ) ;
 int vmf_insert_pfn_pmd (struct vm_fault*,int ,int ) ;
 int xas ;
 int xas_lock_irq (int *) ;
 int xas_set_mark (int *,int ) ;
 int xas_unlock_irq (int *) ;

__attribute__((used)) static vm_fault_t
dax_insert_pfn_mkwrite(struct vm_fault *vmf, pfn_t pfn, unsigned int order)
{
 struct address_space *mapping = vmf->vma->vm_file->f_mapping;
 XA_STATE_ORDER(xas, &mapping->i_pages, vmf->pgoff, order);
 void *entry;
 vm_fault_t ret;

 xas_lock_irq(&xas);
 entry = get_unlocked_entry(&xas, order);

 if (!entry || dax_is_conflict(entry) ||
     (order == 0 && !dax_is_pte_entry(entry))) {
  put_unlocked_entry(&xas, entry);
  xas_unlock_irq(&xas);
  trace_dax_insert_pfn_mkwrite_no_entry(mapping->host, vmf,
            VM_FAULT_NOPAGE);
  return VM_FAULT_NOPAGE;
 }
 xas_set_mark(&xas, PAGECACHE_TAG_DIRTY);
 dax_lock_entry(&xas, entry);
 xas_unlock_irq(&xas);
 if (order == 0)
  ret = vmf_insert_mixed_mkwrite(vmf->vma, vmf->address, pfn);




 else
  ret = VM_FAULT_FALLBACK;
 dax_unlock_entry(&xas, entry);
 trace_dax_insert_pfn_mkwrite(mapping->host, vmf, ret);
 return ret;
}
