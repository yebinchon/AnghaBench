
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int uint32_t ;
struct kvm_vm {scalar_t__ mode; int pgd_created; int pgd; } ;


 int KVM_GUEST_PAGE_TABLE_MIN_PADDR ;
 int TEST_ASSERT (int,char*,scalar_t__) ;
 scalar_t__ VM_MODE_PXXV48_4K ;
 int vm_phy_page_alloc (struct kvm_vm*,int ,int ) ;

void virt_pgd_alloc(struct kvm_vm *vm, uint32_t pgd_memslot)
{
 TEST_ASSERT(vm->mode == VM_MODE_PXXV48_4K, "Attempt to use "
  "unknown or unsupported guest mode, mode: 0x%x", vm->mode);


 if (!vm->pgd_created) {
  vm_paddr_t paddr = vm_phy_page_alloc(vm,
   KVM_GUEST_PAGE_TABLE_MIN_PADDR, pgd_memslot);
  vm->pgd = paddr;
  vm->pgd_created = 1;
 }
}
