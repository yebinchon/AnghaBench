
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int uint32_t ;
struct kvm_vm {int page_size; int pgd_created; int pgd; } ;


 int KVM_GUEST_PAGE_TABLE_MIN_PADDR ;
 int PAGES_PER_REGION ;
 int TEST_ASSERT (int,char*,int) ;
 int addr_gpa2hva (struct kvm_vm*,int ) ;
 int memset (int ,int,int) ;
 int vm_phy_pages_alloc (struct kvm_vm*,int,int ,int ) ;

void virt_pgd_alloc(struct kvm_vm *vm, uint32_t memslot)
{
 vm_paddr_t paddr;

 TEST_ASSERT(vm->page_size == 4096, "Unsupported page size: 0x%x",
      vm->page_size);

 if (vm->pgd_created)
  return;

 paddr = vm_phy_pages_alloc(vm, PAGES_PER_REGION,
       KVM_GUEST_PAGE_TABLE_MIN_PADDR, memslot);
 memset(addr_gpa2hva(vm, paddr), 0xff, PAGES_PER_REGION * vm->page_size);

 vm->pgd = paddr;
 vm->pgd_created = 1;
}
