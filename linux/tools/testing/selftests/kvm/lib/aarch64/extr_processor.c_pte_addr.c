
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kvm_vm {unsigned long va_bits; unsigned long page_shift; } ;



__attribute__((used)) static uint64_t pte_addr(struct kvm_vm *vm, uint64_t entry)
{
 uint64_t mask = ((1UL << (vm->va_bits - vm->page_shift)) - 1) << vm->page_shift;
 return entry & mask;
}
