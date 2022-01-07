
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_vaddr_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct kvm_vm {size_t page_shift; size_t page_size; int vpages_mapped; } ;


 int KVM_UTIL_MIN_PFN ;
 int sparsebit_set (int ,int) ;
 int virt_pg_map (struct kvm_vm*,int,int ,int ) ;
 int virt_pgd_alloc (struct kvm_vm*,int ) ;
 int vm_phy_page_alloc (struct kvm_vm*,int,int ) ;
 int vm_vaddr_unused_gap (struct kvm_vm*,size_t,int) ;

vm_vaddr_t vm_vaddr_alloc(struct kvm_vm *vm, size_t sz, vm_vaddr_t vaddr_min,
     uint32_t data_memslot, uint32_t pgd_memslot)
{
 uint64_t pages = (sz >> vm->page_shift) + ((sz % vm->page_size) != 0);

 virt_pgd_alloc(vm, pgd_memslot);





 vm_vaddr_t vaddr_start = vm_vaddr_unused_gap(vm, sz, vaddr_min);


 for (vm_vaddr_t vaddr = vaddr_start; pages > 0;
  pages--, vaddr += vm->page_size) {
  vm_paddr_t paddr;

  paddr = vm_phy_page_alloc(vm,
    KVM_UTIL_MIN_PFN * vm->page_size, data_memslot);

  virt_pg_map(vm, vaddr, paddr, pgd_memslot);

  sparsebit_set(vm->vpages_mapped,
   vaddr >> vm->page_shift);
 }

 return vaddr_start;
}
