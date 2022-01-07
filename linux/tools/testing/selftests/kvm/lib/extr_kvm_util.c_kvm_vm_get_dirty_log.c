
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {int fd; } ;
struct kvm_dirty_log {void* dirty_bitmap; int slot; } ;


 int KVM_GET_DIRTY_LOG ;
 int TEST_ASSERT (int,char*,int ) ;
 int ioctl (int ,int ,struct kvm_dirty_log*) ;
 int strerror (int) ;

void kvm_vm_get_dirty_log(struct kvm_vm *vm, int slot, void *log)
{
 struct kvm_dirty_log args = { .dirty_bitmap = log, .slot = slot };
 int ret;

 ret = ioctl(vm->fd, KVM_GET_DIRTY_LOG, &args);
 TEST_ASSERT(ret == 0, "%s: KVM_GET_DIRTY_LOG failed: %s",
      strerror(-ret));
}
