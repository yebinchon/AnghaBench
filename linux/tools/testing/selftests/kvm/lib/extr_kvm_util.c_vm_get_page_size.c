
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {unsigned int page_size; } ;



unsigned int vm_get_page_size(struct kvm_vm *vm)
{
 return vm->page_size;
}
