
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_vaddr_t ;
struct ucall {char const* cmd; scalar_t__* args; } ;
struct TYPE_2__ {scalar_t__ port; } ;
struct kvm_run {scalar_t__ exit_reason; TYPE_1__ io; } ;


 scalar_t__ KVM_EXIT_IO ;
 scalar_t__ PORT_L0_EXIT ;
 int TEST_ASSERT (int,char*,char const*,...) ;

 int VCPU_ID ;
 int exit_reason_str (scalar_t__) ;
 int get_ucall (int ,int ,struct ucall*) ;
 int kvm_get_supported_cpuid () ;
 scalar_t__ l1_guest_code ;
 int nested_vmx_check_supported () ;
 int vcpu_alloc_vmx (int ,int *) ;
 int vcpu_args_set (int ,int ,int,int ) ;
 int vcpu_run (int ,int ) ;
 int vcpu_set_cpuid (int ,int ,int ) ;
 struct kvm_run* vcpu_state (int ,int ) ;
 int vm ;
 int vm_create_default (int ,int ,void*) ;

int main(int argc, char *argv[])
{
 vm_vaddr_t vmx_pages_gva;

 nested_vmx_check_supported();

 vm = vm_create_default(VCPU_ID, 0, (void *) l1_guest_code);
 vcpu_set_cpuid(vm, VCPU_ID, kvm_get_supported_cpuid());


 vcpu_alloc_vmx(vm, &vmx_pages_gva);
 vcpu_args_set(vm, VCPU_ID, 1, vmx_pages_gva);

 for (;;) {
  volatile struct kvm_run *run = vcpu_state(vm, VCPU_ID);
  struct ucall uc;

  vcpu_run(vm, VCPU_ID);
  TEST_ASSERT(run->exit_reason == KVM_EXIT_IO,
       "Got exit_reason other than KVM_EXIT_IO: %u (%s)\n",
       run->exit_reason,
       exit_reason_str(run->exit_reason));

  if (run->io.port == PORT_L0_EXIT)
   break;

  switch (get_ucall(vm, VCPU_ID, &uc)) {
  case 128:
   TEST_ASSERT(0, "%s", (const char *)uc.args[0]);

  default:
   TEST_ASSERT(0, "Unknown ucall 0x%x.", uc.cmd);
  }
 }
}
