
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int ucall ;
struct ucall {int cmd; } ;
struct kvm_vm {int dummy; } ;
struct TYPE_5__ {int * gprs; } ;
struct TYPE_6__ {TYPE_2__ regs; } ;
struct TYPE_4__ {int icptcode; int ipa; int ipb; } ;
struct kvm_run {scalar_t__ exit_reason; TYPE_3__ s; TYPE_1__ s390_sieic; } ;


 scalar_t__ KVM_EXIT_S390_SIEIC ;
 struct ucall* addr_gva2hva (struct kvm_vm*,int ) ;
 int memcpy (struct ucall*,struct ucall*,int) ;
 int vcpu_run_complete_io (struct kvm_vm*,int ) ;
 struct kvm_run* vcpu_state (struct kvm_vm*,int ) ;

uint64_t get_ucall(struct kvm_vm *vm, uint32_t vcpu_id, struct ucall *uc)
{
 struct kvm_run *run = vcpu_state(vm, vcpu_id);
 struct ucall ucall = {};

 if (run->exit_reason == KVM_EXIT_S390_SIEIC &&
     run->s390_sieic.icptcode == 4 &&
     (run->s390_sieic.ipa >> 8) == 0x83 &&
     (run->s390_sieic.ipb >> 16) == 0x501) {
  int reg = run->s390_sieic.ipa & 0xf;

  memcpy(&ucall, addr_gva2hva(vm, run->s.regs.gprs[reg]),
         sizeof(ucall));

  vcpu_run_complete_io(vm, vcpu_id);
  if (uc)
   memcpy(uc, &ucall, sizeof(ucall));
 }

 return ucall.cmd;
}
