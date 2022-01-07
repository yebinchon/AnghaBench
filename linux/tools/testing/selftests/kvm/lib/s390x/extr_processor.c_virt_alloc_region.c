
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct kvm_vm {int page_size; } ;


 int KVM_GUEST_PAGE_TABLE_MIN_PADDR ;
 int PAGES_PER_REGION ;
 int REGION_ENTRY_LENGTH ;
 int REGION_ENTRY_ORIGIN ;
 int REGION_ENTRY_TYPE ;
 int addr_gpa2hva (struct kvm_vm*,int) ;
 int memset (int ,int,int) ;
 int vm_phy_pages_alloc (struct kvm_vm*,int,int ,int ) ;

__attribute__((used)) static uint64_t virt_alloc_region(struct kvm_vm *vm, int ri, uint32_t memslot)
{
 uint64_t taddr;

 taddr = vm_phy_pages_alloc(vm, ri < 4 ? PAGES_PER_REGION : 1,
       KVM_GUEST_PAGE_TABLE_MIN_PADDR, memslot);
 memset(addr_gpa2hva(vm, taddr), 0xff, PAGES_PER_REGION * vm->page_size);

 return (taddr & REGION_ENTRY_ORIGIN)
  | (((4 - ri) << 2) & REGION_ENTRY_TYPE)
  | ((ri < 4 ? (PAGES_PER_REGION - 1) : 0) & REGION_ENTRY_LENGTH);
}
