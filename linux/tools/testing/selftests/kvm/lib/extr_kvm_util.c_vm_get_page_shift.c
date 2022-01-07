
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {unsigned int page_shift; } ;



unsigned int vm_get_page_shift(struct kvm_vm *vm)
{
 return vm->page_shift;
}
