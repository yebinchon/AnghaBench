
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct kvm_vm {int fd; } ;
struct kvm_clear_dirty_log {void* dirty_bitmap; int slot; int num_pages; int first_page; } ;


 int KVM_CLEAR_DIRTY_LOG ;
 int TEST_ASSERT (int,char*,int ) ;
 int ioctl (int ,int ,struct kvm_clear_dirty_log*) ;
 int strerror (int) ;

void kvm_vm_clear_dirty_log(struct kvm_vm *vm, int slot, void *log,
       uint64_t first_page, uint32_t num_pages)
{
 struct kvm_clear_dirty_log args = { .dirty_bitmap = log, .slot = slot,
                              .first_page = first_page,
                                     .num_pages = num_pages };
 int ret;

 ret = ioctl(vm->fd, KVM_CLEAR_DIRTY_LOG, &args);
 TEST_ASSERT(ret == 0, "%s: KVM_CLEAR_DIRTY_LOG failed: %s",
      strerror(-ret));
}
