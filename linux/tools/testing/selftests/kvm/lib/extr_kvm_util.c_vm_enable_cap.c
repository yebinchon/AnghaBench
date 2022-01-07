
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {int fd; } ;
struct kvm_enable_cap {int dummy; } ;


 int KVM_ENABLE_CAP ;
 int TEST_ASSERT (int,char*,int,int ) ;
 int errno ;
 int ioctl (int ,int ,struct kvm_enable_cap*) ;

int vm_enable_cap(struct kvm_vm *vm, struct kvm_enable_cap *cap)
{
 int ret;

 ret = ioctl(vm->fd, KVM_ENABLE_CAP, cap);
 TEST_ASSERT(ret == 0, "KVM_ENABLE_CAP IOCTL failed,\n"
  "  rc: %i errno: %i", ret, errno);

 return ret;
}
