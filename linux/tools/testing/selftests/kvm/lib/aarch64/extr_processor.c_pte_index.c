
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_vaddr_t ;
typedef int uint64_t ;
struct kvm_vm {int page_shift; } ;



__attribute__((used)) static uint64_t pte_index(struct kvm_vm *vm, vm_vaddr_t gva)
{
 uint64_t mask = (1UL << (vm->page_shift - 3)) - 1;
 return (gva >> vm->page_shift) & mask;
}
