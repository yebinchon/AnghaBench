
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int vm_vaddr_t ;
typedef unsigned int uint64_t ;
struct kvm_vm {int page_shift; int pgtable_levels; int mode; } ;


 int TEST_ASSERT (int,char*,int ) ;

__attribute__((used)) static uint64_t pmd_index(struct kvm_vm *vm, vm_vaddr_t gva)
{
 unsigned int shift = (vm->page_shift - 3) + vm->page_shift;
 uint64_t mask = (1UL << (vm->page_shift - 3)) - 1;

 TEST_ASSERT(vm->pgtable_levels >= 3,
  "Mode %d does not have >= 3 page table levels", vm->mode);

 return (gva >> shift) & mask;
}
