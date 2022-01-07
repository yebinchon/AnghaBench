
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vcpu {int fd; } ;
struct kvm_vm {int dummy; } ;
struct kvm_mp_state {int dummy; } ;


 int KVM_SET_MP_STATE ;
 int TEST_ASSERT (int,char*,int,...) ;
 int errno ;
 int ioctl (int ,int ,struct kvm_mp_state*) ;
 struct vcpu* vcpu_find (struct kvm_vm*,int ) ;

void vcpu_set_mp_state(struct kvm_vm *vm, uint32_t vcpuid,
         struct kvm_mp_state *mp_state)
{
 struct vcpu *vcpu = vcpu_find(vm, vcpuid);
 int ret;

 TEST_ASSERT(vcpu != ((void*)0), "vcpu not found, vcpuid: %u", vcpuid);

 ret = ioctl(vcpu->fd, KVM_SET_MP_STATE, mp_state);
 TEST_ASSERT(ret == 0, "KVM_SET_MP_STATE IOCTL failed, "
  "rc: %i errno: %i", ret, errno);
}
