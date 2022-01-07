
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {int has_irqchip; int fd; } ;


 int KVM_CREATE_IRQCHIP ;
 int TEST_ASSERT (int,char*,int,int ) ;
 int errno ;
 int ioctl (int ,int ,int ) ;

void vm_create_irqchip(struct kvm_vm *vm)
{
 int ret;

 ret = ioctl(vm->fd, KVM_CREATE_IRQCHIP, 0);
 TEST_ASSERT(ret == 0, "KVM_CREATE_IRQCHIP IOCTL failed, "
  "rc: %i errno: %i", ret, errno);

 vm->has_irqchip = 1;
}
