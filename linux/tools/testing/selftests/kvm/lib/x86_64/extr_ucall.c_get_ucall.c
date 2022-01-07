
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_vaddr_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int ucall ;
struct ucall {int cmd; } ;
struct kvm_vm {int dummy; } ;
struct TYPE_2__ {scalar_t__ port; } ;
struct kvm_run {scalar_t__ exit_reason; TYPE_1__ io; } ;
struct kvm_regs {scalar_t__ rdi; } ;


 scalar_t__ KVM_EXIT_IO ;
 scalar_t__ UCALL_PIO_PORT ;
 struct ucall* addr_gva2hva (struct kvm_vm*,int ) ;
 int memcpy (struct ucall*,struct ucall*,int) ;
 int vcpu_regs_get (struct kvm_vm*,int ,struct kvm_regs*) ;
 int vcpu_run_complete_io (struct kvm_vm*,int ) ;
 struct kvm_run* vcpu_state (struct kvm_vm*,int ) ;

uint64_t get_ucall(struct kvm_vm *vm, uint32_t vcpu_id, struct ucall *uc)
{
 struct kvm_run *run = vcpu_state(vm, vcpu_id);
 struct ucall ucall = {};

 if (run->exit_reason == KVM_EXIT_IO && run->io.port == UCALL_PIO_PORT) {
  struct kvm_regs regs;

  vcpu_regs_get(vm, vcpu_id, &regs);
  memcpy(&ucall, addr_gva2hva(vm, (vm_vaddr_t)regs.rdi),
         sizeof(ucall));

  vcpu_run_complete_io(vm, vcpu_id);
  if (uc)
   memcpy(uc, &ucall, sizeof(ucall));
 }

 return ucall.cmd;
}
