
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vcpu {int fd; } ;
struct kvm_vm {int dummy; } ;


 scalar_t__ EINTR ;
 int KVM_RUN ;
 int TEST_ASSERT (int ,char*,int ) ;
 scalar_t__ errno ;
 int ioctl (int ,int ,int *) ;
 struct vcpu* vcpu_find (struct kvm_vm*,int ) ;

int _vcpu_run(struct kvm_vm *vm, uint32_t vcpuid)
{
 struct vcpu *vcpu = vcpu_find(vm, vcpuid);
 int rc;

 TEST_ASSERT(vcpu != ((void*)0), "vcpu not found, vcpuid: %u", vcpuid);
 do {
  rc = ioctl(vcpu->fd, KVM_RUN, ((void*)0));
 } while (rc == -1 && errno == EINTR);
 return rc;
}
