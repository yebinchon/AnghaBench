
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vcpu {scalar_t__ id; struct vcpu* next; } ;
struct kvm_vm {struct vcpu* vcpu_head; } ;



struct vcpu *vcpu_find(struct kvm_vm *vm, uint32_t vcpuid)
{
 struct vcpu *vcpup;

 for (vcpup = vm->vcpu_head; vcpup; vcpup = vcpup->next) {
  if (vcpup->id == vcpuid)
   return vcpup;
 }

 return ((void*)0);
}
