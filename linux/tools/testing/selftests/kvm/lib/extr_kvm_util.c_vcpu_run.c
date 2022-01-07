
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kvm_vm {int dummy; } ;


 int TEST_ASSERT (int,char*,int,int ) ;
 int _vcpu_run (struct kvm_vm*,int ) ;
 int errno ;

void vcpu_run(struct kvm_vm *vm, uint32_t vcpuid)
{
 int ret = _vcpu_run(vm, vcpuid);
 TEST_ASSERT(ret == 0, "KVM_RUN IOCTL failed, "
  "rc: %i errno: %i", ret, errno);
}
