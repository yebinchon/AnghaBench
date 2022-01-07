
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int vm_vaddr_t ;
typedef unsigned int uint64_t ;
struct kvm_vm {int pgtable_levels; int page_shift; unsigned int va_bits; } ;



__attribute__((used)) static uint64_t pgd_index(struct kvm_vm *vm, vm_vaddr_t gva)
{
 unsigned int shift = (vm->pgtable_levels - 1) * (vm->page_shift - 3) + vm->page_shift;
 uint64_t mask = (1UL << (vm->va_bits - shift)) - 1;

 return (gva >> shift) & mask;
}
