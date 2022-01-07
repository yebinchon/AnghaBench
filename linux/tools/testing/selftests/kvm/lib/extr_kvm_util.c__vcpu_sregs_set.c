
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vcpu {int fd; } ;
struct kvm_vm {int dummy; } ;
struct kvm_sregs {int dummy; } ;


 int KVM_SET_SREGS ;
 int TEST_ASSERT (int ,char*,int ) ;
 int ioctl (int ,int ,struct kvm_sregs*) ;
 struct vcpu* vcpu_find (struct kvm_vm*,int ) ;

int _vcpu_sregs_set(struct kvm_vm *vm, uint32_t vcpuid, struct kvm_sregs *sregs)
{
 struct vcpu *vcpu = vcpu_find(vm, vcpuid);

 TEST_ASSERT(vcpu != ((void*)0), "vcpu not found, vcpuid: %u", vcpuid);

 return ioctl(vcpu->fd, KVM_SET_SREGS, sregs);
}
