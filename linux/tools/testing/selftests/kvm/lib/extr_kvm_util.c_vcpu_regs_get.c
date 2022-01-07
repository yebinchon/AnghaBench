
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vcpu {int fd; } ;
struct kvm_vm {int dummy; } ;
struct kvm_regs {int dummy; } ;


 int KVM_GET_REGS ;
 int TEST_ASSERT (int,char*,int,...) ;
 int errno ;
 int ioctl (int ,int ,struct kvm_regs*) ;
 struct vcpu* vcpu_find (struct kvm_vm*,int ) ;

void vcpu_regs_get(struct kvm_vm *vm, uint32_t vcpuid, struct kvm_regs *regs)
{
 struct vcpu *vcpu = vcpu_find(vm, vcpuid);
 int ret;

 TEST_ASSERT(vcpu != ((void*)0), "vcpu not found, vcpuid: %u", vcpuid);

 ret = ioctl(vcpu->fd, KVM_GET_REGS, regs);
 TEST_ASSERT(ret == 0, "KVM_GET_REGS failed, rc: %i errno: %i",
  ret, errno);
}
