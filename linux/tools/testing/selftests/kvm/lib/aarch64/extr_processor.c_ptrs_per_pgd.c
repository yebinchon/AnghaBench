
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kvm_vm {int pgtable_levels; int page_shift; unsigned int va_bits; } ;



__attribute__((used)) static uint64_t ptrs_per_pgd(struct kvm_vm *vm)
{
 unsigned int shift = (vm->pgtable_levels - 1) * (vm->page_shift - 3) + vm->page_shift;
 return 1 << (vm->va_bits - shift);
}
