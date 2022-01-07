
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {int fd; } ;


 int TEST_ASSERT (int,char*,unsigned long,int,int ,int ) ;
 int errno ;
 int ioctl (int ,unsigned long,void*) ;
 int strerror (int ) ;

void vm_ioctl(struct kvm_vm *vm, unsigned long cmd, void *arg)
{
 int ret;

 ret = ioctl(vm->fd, cmd, arg);
 TEST_ASSERT(ret == 0, "vm ioctl %lu failed, rc: %i errno: %i (%s)",
  cmd, ret, errno, strerror(errno));
}
