
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucall {int cmd; } ;
struct kvm_vm {int dummy; } ;
struct kvm_sregs {int cr4; } ;
struct kvm_run {int exit_reason; } ;
struct kvm_cpuid_entry2 {int ecx; } ;


 int KVM_EXIT_IO ;
 int TEST_ASSERT (int,char*,...) ;



 int VCPU_ID ;
 int X86_CR4_OSXSAVE ;
 int X86_FEATURE_XSAVE ;
 int _vcpu_run (struct kvm_vm*,int ) ;
 int exit_reason_str (int ) ;
 int get_ucall (struct kvm_vm*,int ,struct ucall*) ;
 int guest_code ;
 int kvm_get_supported_cpuid () ;
 struct kvm_cpuid_entry2* kvm_get_supported_cpuid_entry (int) ;
 int kvm_vm_free (struct kvm_vm*) ;
 int printf (char*) ;
 int setbuf (int ,int *) ;
 int stdout ;
 int vcpu_set_cpuid (struct kvm_vm*,int ,int ) ;
 int vcpu_sregs_get (struct kvm_vm*,int ,struct kvm_sregs*) ;
 int vcpu_sregs_set (struct kvm_vm*,int ,struct kvm_sregs*) ;
 struct kvm_run* vcpu_state (struct kvm_vm*,int ) ;
 struct kvm_vm* vm_create_default (int ,int ,int ) ;

int main(int argc, char *argv[])
{
 struct kvm_run *run;
 struct kvm_vm *vm;
 struct kvm_sregs sregs;
 struct kvm_cpuid_entry2 *entry;
 struct ucall uc;
 int rc;

 entry = kvm_get_supported_cpuid_entry(1);
 if (!(entry->ecx & X86_FEATURE_XSAVE)) {
  printf("XSAVE feature not supported, skipping test\n");
  return 0;
 }


 setbuf(stdout, ((void*)0));


 vm = vm_create_default(VCPU_ID, 0, guest_code);
 vcpu_set_cpuid(vm, VCPU_ID, kvm_get_supported_cpuid());
 run = vcpu_state(vm, VCPU_ID);

 while (1) {
  rc = _vcpu_run(vm, VCPU_ID);

  TEST_ASSERT(rc == 0, "vcpu_run failed: %d\n", rc);
  TEST_ASSERT(run->exit_reason == KVM_EXIT_IO,
       "Unexpected exit reason: %u (%s),\n",
       run->exit_reason,
       exit_reason_str(run->exit_reason));

  switch (get_ucall(vm, VCPU_ID, &uc)) {
  case 128:

   vcpu_sregs_get(vm, VCPU_ID, &sregs);
   sregs.cr4 &= ~X86_CR4_OSXSAVE;
   vcpu_sregs_set(vm, VCPU_ID, &sregs);
   break;
  case 130:
   TEST_ASSERT(0, "Guest CR4 bit (OSXSAVE) unsynchronized with CPUID bit.");
   break;
  case 129:
   goto done;
  default:
   TEST_ASSERT(0, "Unknown ucall 0x%x.", uc.cmd);
  }
 }

 kvm_vm_free(vm);

done:
 return 0;
}
