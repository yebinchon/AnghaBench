
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int uint32_t ;
struct kvm_vm {int dummy; } ;


 int vm_phy_pages_alloc (struct kvm_vm*,int,int ,int ) ;

vm_paddr_t vm_phy_page_alloc(struct kvm_vm *vm, vm_paddr_t paddr_min,
        uint32_t memslot)
{
 return vm_phy_pages_alloc(vm, 1, paddr_min, memslot);
}
