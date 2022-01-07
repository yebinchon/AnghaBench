
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucall {scalar_t__ cmd; } ;
typedef struct ucall vm_vaddr_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int ucall ;
struct kvm_vm {int dummy; } ;
struct TYPE_2__ {scalar_t__ phys_addr; int len; struct ucall* data; scalar_t__ is_write; } ;
struct kvm_run {scalar_t__ exit_reason; TYPE_1__ mmio; } ;
typedef int gva ;


 scalar_t__ KVM_EXIT_MMIO ;
 int TEST_ASSERT (int,char*) ;
 struct ucall* addr_gva2hva (struct kvm_vm*,struct ucall) ;
 int memcpy (struct ucall*,struct ucall*,int) ;
 scalar_t__ ucall_exit_mmio_addr ;
 int vcpu_run_complete_io (struct kvm_vm*,int ) ;
 struct kvm_run* vcpu_state (struct kvm_vm*,int ) ;

uint64_t get_ucall(struct kvm_vm *vm, uint32_t vcpu_id, struct ucall *uc)
{
 struct kvm_run *run = vcpu_state(vm, vcpu_id);
 struct ucall ucall = {};

 if (run->exit_reason == KVM_EXIT_MMIO &&
     run->mmio.phys_addr == (uint64_t)ucall_exit_mmio_addr) {
  vm_vaddr_t gva;

  TEST_ASSERT(run->mmio.is_write && run->mmio.len == 8,
       "Unexpected ucall exit mmio address access");
  memcpy(&gva, run->mmio.data, sizeof(gva));
  memcpy(&ucall, addr_gva2hva(vm, gva), sizeof(ucall));

  vcpu_run_complete_io(vm, vcpu_id);
  if (uc)
   memcpy(uc, &ucall, sizeof(ucall));
 }

 return ucall.cmd;
}
