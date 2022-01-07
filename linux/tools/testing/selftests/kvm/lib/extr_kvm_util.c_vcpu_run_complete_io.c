
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vcpu {TYPE_1__* state; int fd; } ;
struct kvm_vm {int dummy; } ;
struct TYPE_2__ {int immediate_exit; } ;


 scalar_t__ EINTR ;
 int KVM_RUN ;
 int TEST_ASSERT (int,char*,int,...) ;
 scalar_t__ errno ;
 int ioctl (int ,int ,int *) ;
 struct vcpu* vcpu_find (struct kvm_vm*,int ) ;

void vcpu_run_complete_io(struct kvm_vm *vm, uint32_t vcpuid)
{
 struct vcpu *vcpu = vcpu_find(vm, vcpuid);
 int ret;

 TEST_ASSERT(vcpu != ((void*)0), "vcpu not found, vcpuid: %u", vcpuid);

 vcpu->state->immediate_exit = 1;
 ret = ioctl(vcpu->fd, KVM_RUN, ((void*)0));
 vcpu->state->immediate_exit = 0;

 TEST_ASSERT(ret == -1 && errno == EINTR,
      "KVM_RUN IOCTL didn't exit immediately, rc: %i, errno: %i",
      ret, errno);
}
