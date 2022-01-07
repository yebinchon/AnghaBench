
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vcpu {int id; scalar_t__ fd; struct vcpu* next; struct vcpu* prev; struct kvm_run* state; } ;
struct kvm_vm {struct vcpu* vcpu_head; int fd; } ;
struct kvm_run {int dummy; } ;


 int KVM_CREATE_VCPU ;
 struct kvm_run* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int TEST_ASSERT (int,char*,...) ;
 struct vcpu* calloc (int,int) ;
 int errno ;
 scalar_t__ ioctl (int ,int ,int) ;
 scalar_t__ mmap (int *,int,int,int ,int,int ) ;
 struct vcpu* vcpu_find (struct kvm_vm*,int) ;
 int vcpu_mmap_sz () ;

void vm_vcpu_add(struct kvm_vm *vm, uint32_t vcpuid)
{
 struct vcpu *vcpu;


 vcpu = vcpu_find(vm, vcpuid);
 if (vcpu != ((void*)0))
  TEST_ASSERT(0, "vcpu with the specified id "
   "already exists,\n"
   "  requested vcpuid: %u\n"
   "  existing vcpuid: %u state: %p",
   vcpuid, vcpu->id, vcpu->state);


 vcpu = calloc(1, sizeof(*vcpu));
 TEST_ASSERT(vcpu != ((void*)0), "Insufficient Memory");
 vcpu->id = vcpuid;
 vcpu->fd = ioctl(vm->fd, KVM_CREATE_VCPU, vcpuid);
 TEST_ASSERT(vcpu->fd >= 0, "KVM_CREATE_VCPU failed, rc: %i errno: %i",
  vcpu->fd, errno);

 TEST_ASSERT(vcpu_mmap_sz() >= sizeof(*vcpu->state), "vcpu mmap size "
  "smaller than expected, vcpu_mmap_sz: %i expected_min: %zi",
  vcpu_mmap_sz(), sizeof(*vcpu->state));
 vcpu->state = (struct kvm_run *) mmap(((void*)0), sizeof(*vcpu->state),
  PROT_READ | PROT_WRITE, MAP_SHARED, vcpu->fd, 0);
 TEST_ASSERT(vcpu->state != MAP_FAILED, "mmap vcpu_state failed, "
  "vcpu id: %u errno: %i", vcpuid, errno);


 if (vm->vcpu_head)
  vm->vcpu_head->prev = vcpu;
 vcpu->next = vm->vcpu_head;
 vm->vcpu_head = vcpu;
}
