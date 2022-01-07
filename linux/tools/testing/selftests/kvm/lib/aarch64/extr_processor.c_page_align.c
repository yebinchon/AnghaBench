
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kvm_vm {int page_size; } ;



__attribute__((used)) static uint64_t page_align(struct kvm_vm *vm, uint64_t v)
{
 return (v + vm->page_size) & ~(vm->page_size - 1);
}
