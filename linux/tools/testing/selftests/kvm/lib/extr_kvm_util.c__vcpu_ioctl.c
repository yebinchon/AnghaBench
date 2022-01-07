
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vcpu {int fd; } ;
struct kvm_vm {int dummy; } ;


 int TEST_ASSERT (int ,char*,int ) ;
 int ioctl (int ,unsigned long,void*) ;
 struct vcpu* vcpu_find (struct kvm_vm*,int ) ;

int _vcpu_ioctl(struct kvm_vm *vm, uint32_t vcpuid,
  unsigned long cmd, void *arg)
{
 struct vcpu *vcpu = vcpu_find(vm, vcpuid);
 int ret;

 TEST_ASSERT(vcpu != ((void*)0), "vcpu not found, vcpuid: %u", vcpuid);

 ret = ioctl(vcpu->fd, cmd, arg);

 return ret;
}
