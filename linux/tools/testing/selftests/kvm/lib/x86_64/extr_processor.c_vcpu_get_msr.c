
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct vcpu {int fd; } ;
struct kvm_vm {int dummy; } ;
struct kvm_msrs {int nmsrs; } ;
struct kvm_msr_entry {int data; int index; } ;


 int KVM_GET_MSRS ;
 int TEST_ASSERT (int,char*,int,...) ;
 int errno ;
 int ioctl (int ,int ,struct kvm_msrs*) ;
 struct vcpu* vcpu_find (struct kvm_vm*,int ) ;

uint64_t vcpu_get_msr(struct kvm_vm *vm, uint32_t vcpuid, uint64_t msr_index)
{
 struct vcpu *vcpu = vcpu_find(vm, vcpuid);
 struct {
  struct kvm_msrs header;
  struct kvm_msr_entry entry;
 } buffer = {};
 int r;

 TEST_ASSERT(vcpu != ((void*)0), "vcpu not found, vcpuid: %u", vcpuid);
 buffer.header.nmsrs = 1;
 buffer.entry.index = msr_index;
 r = ioctl(vcpu->fd, KVM_GET_MSRS, &buffer.header);
 TEST_ASSERT(r == 1, "KVM_GET_MSRS IOCTL failed,\n"
  "  rc: %i errno: %i", r, errno);

 return buffer.entry.data;
}
