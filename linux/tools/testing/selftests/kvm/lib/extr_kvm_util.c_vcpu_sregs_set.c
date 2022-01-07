
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kvm_vm {int dummy; } ;
struct kvm_sregs {int dummy; } ;


 int TEST_ASSERT (int,char*,int,int ) ;
 int _vcpu_sregs_set (struct kvm_vm*,int ,struct kvm_sregs*) ;
 int errno ;

void vcpu_sregs_set(struct kvm_vm *vm, uint32_t vcpuid, struct kvm_sregs *sregs)
{
 int ret = _vcpu_sregs_set(vm, vcpuid, sregs);
 TEST_ASSERT(ret == 0, "KVM_RUN IOCTL failed, "
  "rc: %i errno: %i", ret, errno);
}
