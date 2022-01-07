
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kvm_vm {int dummy; } ;
struct kvm_vcpu_events {int dummy; } ;
struct kvm_sregs {int dummy; } ;
struct TYPE_8__ {int rbx; } ;
struct TYPE_7__ {int apic_base; } ;
struct TYPE_6__ {TYPE_4__ regs; int events; TYPE_3__ sregs; } ;
struct TYPE_5__ {TYPE_2__ regs; } ;
struct kvm_run {int kvm_valid_regs; int kvm_dirty_regs; TYPE_1__ s; int exit_reason; } ;
struct kvm_regs {int rbx; } ;


 scalar_t__ EINVAL ;
 int INVALID_SYNC_FIELD ;
 int KSFT_SKIP ;
 int KVM_CAP_SYNC_REGS ;
 int KVM_EXIT_IO ;
 int KVM_SYNC_X86_REGS ;
 int KVM_SYNC_X86_SREGS ;
 int TEST_ASSERT (int,char*,int,...) ;
 int TEST_SYNC_FIELDS ;
 int VCPU_ID ;
 int _vcpu_run (struct kvm_vm*,int ) ;
 int compare_regs (struct kvm_regs*,TYPE_4__*) ;
 int compare_sregs (struct kvm_sregs*,TYPE_3__*) ;
 int compare_vcpu_events (struct kvm_vcpu_events*,int *) ;
 scalar_t__ errno ;
 int exit (int ) ;
 int exit_reason_str (int ) ;
 int fprintf (int ,char*) ;
 int guest_code ;
 int kvm_check_cap (int ) ;
 int kvm_vm_free (struct kvm_vm*) ;
 int setbuf (int ,int *) ;
 int stderr ;
 int stdout ;
 int vcpu_events_get (struct kvm_vm*,int ,struct kvm_vcpu_events*) ;
 int vcpu_regs_get (struct kvm_vm*,int ,struct kvm_regs*) ;
 int vcpu_regs_set (struct kvm_vm*,int ,struct kvm_regs*) ;
 int vcpu_sregs_get (struct kvm_vm*,int ,struct kvm_sregs*) ;
 struct kvm_run* vcpu_state (struct kvm_vm*,int ) ;
 struct kvm_vm* vm_create_default (int ,int ,int ) ;

int main(int argc, char *argv[])
{
 struct kvm_vm *vm;
 struct kvm_run *run;
 struct kvm_regs regs;
 struct kvm_sregs sregs;
 struct kvm_vcpu_events events;
 int rv, cap;


 setbuf(stdout, ((void*)0));

 cap = kvm_check_cap(KVM_CAP_SYNC_REGS);
 if ((cap & TEST_SYNC_FIELDS) != TEST_SYNC_FIELDS) {
  fprintf(stderr, "KVM_CAP_SYNC_REGS not supported, skipping test\n");
  exit(KSFT_SKIP);
 }
 if ((cap & INVALID_SYNC_FIELD) != 0) {
  fprintf(stderr, "The \"invalid\" field is not invalid, skipping test\n");
  exit(KSFT_SKIP);
 }


 vm = vm_create_default(VCPU_ID, 0, guest_code);

 run = vcpu_state(vm, VCPU_ID);


 run->kvm_valid_regs = INVALID_SYNC_FIELD;
 rv = _vcpu_run(vm, VCPU_ID);
 TEST_ASSERT(rv < 0 && errno == EINVAL,
      "Invalid kvm_valid_regs did not cause expected KVM_RUN error: %d\n",
      rv);
 vcpu_state(vm, VCPU_ID)->kvm_valid_regs = 0;

 run->kvm_valid_regs = INVALID_SYNC_FIELD | TEST_SYNC_FIELDS;
 rv = _vcpu_run(vm, VCPU_ID);
 TEST_ASSERT(rv < 0 && errno == EINVAL,
      "Invalid kvm_valid_regs did not cause expected KVM_RUN error: %d\n",
      rv);
 vcpu_state(vm, VCPU_ID)->kvm_valid_regs = 0;


 run->kvm_dirty_regs = INVALID_SYNC_FIELD;
 rv = _vcpu_run(vm, VCPU_ID);
 TEST_ASSERT(rv < 0 && errno == EINVAL,
      "Invalid kvm_dirty_regs did not cause expected KVM_RUN error: %d\n",
      rv);
 vcpu_state(vm, VCPU_ID)->kvm_dirty_regs = 0;

 run->kvm_dirty_regs = INVALID_SYNC_FIELD | TEST_SYNC_FIELDS;
 rv = _vcpu_run(vm, VCPU_ID);
 TEST_ASSERT(rv < 0 && errno == EINVAL,
      "Invalid kvm_dirty_regs did not cause expected KVM_RUN error: %d\n",
      rv);
 vcpu_state(vm, VCPU_ID)->kvm_dirty_regs = 0;



 run->kvm_valid_regs = TEST_SYNC_FIELDS;
 rv = _vcpu_run(vm, VCPU_ID);
 TEST_ASSERT(run->exit_reason == KVM_EXIT_IO,
      "Unexpected exit reason: %u (%s),\n",
      run->exit_reason,
      exit_reason_str(run->exit_reason));

 vcpu_regs_get(vm, VCPU_ID, &regs);
 compare_regs(&regs, &run->s.regs.regs);

 vcpu_sregs_get(vm, VCPU_ID, &sregs);
 compare_sregs(&sregs, &run->s.regs.sregs);

 vcpu_events_get(vm, VCPU_ID, &events);
 compare_vcpu_events(&events, &run->s.regs.events);


 run->s.regs.regs.rbx = 0xBAD1DEA;
 run->s.regs.sregs.apic_base = 1 << 11;


 run->kvm_valid_regs = TEST_SYNC_FIELDS;
 run->kvm_dirty_regs = KVM_SYNC_X86_REGS | KVM_SYNC_X86_SREGS;
 rv = _vcpu_run(vm, VCPU_ID);
 TEST_ASSERT(run->exit_reason == KVM_EXIT_IO,
      "Unexpected exit reason: %u (%s),\n",
      run->exit_reason,
      exit_reason_str(run->exit_reason));
 TEST_ASSERT(run->s.regs.regs.rbx == 0xBAD1DEA + 1,
      "rbx sync regs value incorrect 0x%llx.",
      run->s.regs.regs.rbx);
 TEST_ASSERT(run->s.regs.sregs.apic_base == 1 << 11,
      "apic_base sync regs value incorrect 0x%llx.",
      run->s.regs.sregs.apic_base);

 vcpu_regs_get(vm, VCPU_ID, &regs);
 compare_regs(&regs, &run->s.regs.regs);

 vcpu_sregs_get(vm, VCPU_ID, &sregs);
 compare_sregs(&sregs, &run->s.regs.sregs);

 vcpu_events_get(vm, VCPU_ID, &events);
 compare_vcpu_events(&events, &run->s.regs.events);




 run->kvm_valid_regs = TEST_SYNC_FIELDS;
 run->kvm_dirty_regs = 0;
 run->s.regs.regs.rbx = 0xDEADBEEF;
 rv = _vcpu_run(vm, VCPU_ID);
 TEST_ASSERT(run->exit_reason == KVM_EXIT_IO,
      "Unexpected exit reason: %u (%s),\n",
      run->exit_reason,
      exit_reason_str(run->exit_reason));
 TEST_ASSERT(run->s.regs.regs.rbx != 0xDEADBEEF,
      "rbx sync regs value incorrect 0x%llx.",
      run->s.regs.regs.rbx);





 run->kvm_valid_regs = 0;
 run->kvm_dirty_regs = 0;
 run->s.regs.regs.rbx = 0xAAAA;
 regs.rbx = 0xBAC0;
 vcpu_regs_set(vm, VCPU_ID, &regs);
 rv = _vcpu_run(vm, VCPU_ID);
 TEST_ASSERT(run->exit_reason == KVM_EXIT_IO,
      "Unexpected exit reason: %u (%s),\n",
      run->exit_reason,
      exit_reason_str(run->exit_reason));
 TEST_ASSERT(run->s.regs.regs.rbx == 0xAAAA,
      "rbx sync regs value incorrect 0x%llx.",
      run->s.regs.regs.rbx);
 vcpu_regs_get(vm, VCPU_ID, &regs);
 TEST_ASSERT(regs.rbx == 0xBAC0 + 1,
      "rbx guest value incorrect 0x%llx.",
      regs.rbx);





 run->kvm_valid_regs = 0;
 run->kvm_dirty_regs = TEST_SYNC_FIELDS;
 run->s.regs.regs.rbx = 0xBBBB;
 rv = _vcpu_run(vm, VCPU_ID);
 TEST_ASSERT(run->exit_reason == KVM_EXIT_IO,
      "Unexpected exit reason: %u (%s),\n",
      run->exit_reason,
      exit_reason_str(run->exit_reason));
 TEST_ASSERT(run->s.regs.regs.rbx == 0xBBBB,
      "rbx sync regs value incorrect 0x%llx.",
      run->s.regs.regs.rbx);
 vcpu_regs_get(vm, VCPU_ID, &regs);
 TEST_ASSERT(regs.rbx == 0xBBBB + 1,
      "rbx guest value incorrect 0x%llx.",
      regs.rbx);

 kvm_vm_free(vm);

 return 0;
}
