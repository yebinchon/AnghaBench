
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct kvm_vm {size_t page_size; } ;


 int TEST_ASSERT (int,char*) ;
 int virt_pg_map (struct kvm_vm*,scalar_t__,scalar_t__,int ) ;

void virt_map(struct kvm_vm *vm, uint64_t vaddr, uint64_t paddr,
       size_t size, uint32_t pgd_memslot)
{
 size_t page_size = vm->page_size;
 size_t npages = size / page_size;

 TEST_ASSERT(vaddr + size > vaddr, "Vaddr overflow");
 TEST_ASSERT(paddr + size > paddr, "Paddr overflow");

 while (npages--) {
  virt_pg_map(vm, vaddr, paddr, pgd_memslot);
  vaddr += page_size;
  paddr += page_size;
 }
}
