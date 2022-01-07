
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
typedef int uint32_t ;
struct vmx_pages {int dummy; } ;
struct kvm_vm {size_t page_size; } ;


 int TEST_ASSERT (int,char*) ;
 int nested_pg_map (struct vmx_pages*,struct kvm_vm*,size_t,size_t,int ) ;

void nested_map(struct vmx_pages *vmx, struct kvm_vm *vm,
  uint64_t nested_paddr, uint64_t paddr, uint64_t size,
  uint32_t eptp_memslot)
{
 size_t page_size = vm->page_size;
 size_t npages = size / page_size;

 TEST_ASSERT(nested_paddr + size > nested_paddr, "Vaddr overflow");
 TEST_ASSERT(paddr + size > paddr, "Paddr overflow");

 while (npages--) {
  nested_pg_map(vmx, vm, nested_paddr, paddr, eptp_memslot);
  nested_paddr += page_size;
  paddr += page_size;
 }
}
