
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {int dummy; } ;
struct iomap_ops {int dummy; } ;
typedef int pfn_t ;


 int VM_FAULT_FALLBACK ;

__attribute__((used)) static vm_fault_t dax_iomap_pmd_fault(struct vm_fault *vmf, pfn_t *pfnp,
          const struct iomap_ops *ops)
{
 return VM_FAULT_FALLBACK;
}
