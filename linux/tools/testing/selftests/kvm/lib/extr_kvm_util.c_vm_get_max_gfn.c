
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {unsigned int max_gfn; } ;



unsigned int vm_get_max_gfn(struct kvm_vm *vm)
{
 return vm->max_gfn;
}
