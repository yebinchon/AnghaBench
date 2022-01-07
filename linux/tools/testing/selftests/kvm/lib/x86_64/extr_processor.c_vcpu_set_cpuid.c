
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vcpu {int fd; } ;
struct kvm_vm {int dummy; } ;
struct kvm_cpuid2 {int dummy; } ;


 int KVM_SET_CPUID2 ;
 int TEST_ASSERT (int,char*,int,...) ;
 int errno ;
 int ioctl (int ,int ,struct kvm_cpuid2*) ;
 struct vcpu* vcpu_find (struct kvm_vm*,int ) ;

void vcpu_set_cpuid(struct kvm_vm *vm,
  uint32_t vcpuid, struct kvm_cpuid2 *cpuid)
{
 struct vcpu *vcpu = vcpu_find(vm, vcpuid);
 int rc;

 TEST_ASSERT(vcpu != ((void*)0), "vcpu not found, vcpuid: %u", vcpuid);

 rc = ioctl(vcpu->fd, KVM_SET_CPUID2, cpuid);
 TEST_ASSERT(rc == 0, "KVM_SET_CPUID2 failed, rc: %i errno: %i",
      rc, errno);

}
