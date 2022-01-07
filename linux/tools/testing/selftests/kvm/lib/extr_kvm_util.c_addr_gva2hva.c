
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_vaddr_t ;
struct kvm_vm {int dummy; } ;


 void* addr_gpa2hva (struct kvm_vm*,int ) ;
 int addr_gva2gpa (struct kvm_vm*,int ) ;

void *addr_gva2hva(struct kvm_vm *vm, vm_vaddr_t gva)
{
 return addr_gpa2hva(vm, addr_gva2gpa(vm, gva));
}
