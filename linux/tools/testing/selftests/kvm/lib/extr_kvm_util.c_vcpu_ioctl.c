
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kvm_vm {int dummy; } ;


 int TEST_ASSERT (int,char*,unsigned long,int,int ,int ) ;
 int _vcpu_ioctl (struct kvm_vm*,int ,unsigned long,void*) ;
 int errno ;
 int strerror (int ) ;

void vcpu_ioctl(struct kvm_vm *vm, uint32_t vcpuid,
  unsigned long cmd, void *arg)
{
 int ret;

 ret = _vcpu_ioctl(vm, vcpuid, cmd, arg);
 TEST_ASSERT(ret == 0, "vcpu ioctl %lu failed, rc: %i errno: %i (%s)",
  cmd, ret, errno, strerror(errno));
}
