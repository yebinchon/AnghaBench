
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vm {int kvm_fd; int fd; TYPE_1__* vcpu_head; } ;
struct TYPE_2__ {int id; } ;


 int TEST_ASSERT (int,char*,int ,int,int ) ;
 int close (int ) ;
 int errno ;
 int vm_vcpu_rm (struct kvm_vm*,int ) ;

void kvm_vm_release(struct kvm_vm *vmp)
{
 int ret;

 while (vmp->vcpu_head)
  vm_vcpu_rm(vmp, vmp->vcpu_head->id);

 ret = close(vmp->fd);
 TEST_ASSERT(ret == 0, "Close of vm fd failed,\n"
  "  vmp->fd: %i rc: %i errno: %i", vmp->fd, ret, errno);

 close(vmp->kvm_fd);
 TEST_ASSERT(ret == 0, "Close of /dev/kvm fd failed,\n"
  "  vmp->kvm_fd: %i rc: %i errno: %i", vmp->kvm_fd, ret, errno);
}
