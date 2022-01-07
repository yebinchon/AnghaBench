
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {int dummy; } ;
struct iomap_ops {int dummy; } ;
typedef int pfn_t ;
typedef enum page_entry_size { ____Placeholder_page_entry_size } page_entry_size ;




 int VM_FAULT_FALLBACK ;
 int dax_iomap_pmd_fault (struct vm_fault*,int *,struct iomap_ops const*) ;
 int dax_iomap_pte_fault (struct vm_fault*,int *,int*,struct iomap_ops const*) ;

vm_fault_t dax_iomap_fault(struct vm_fault *vmf, enum page_entry_size pe_size,
      pfn_t *pfnp, int *iomap_errp, const struct iomap_ops *ops)
{
 switch (pe_size) {
 case 128:
  return dax_iomap_pte_fault(vmf, pfnp, iomap_errp, ops);
 case 129:
  return dax_iomap_pmd_fault(vmf, pfnp, ops);
 default:
  return VM_FAULT_FALLBACK;
 }
}
