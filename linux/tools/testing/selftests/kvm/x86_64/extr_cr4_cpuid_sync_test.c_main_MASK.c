#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ucall {int cmd; } ;
struct kvm_vm {int dummy; } ;
struct kvm_sregs {int /*<<< orphan*/  cr4; } ;
struct kvm_run {int /*<<< orphan*/  exit_reason; } ;
struct kvm_cpuid_entry2 {int ecx; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_EXIT_IO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
#define  UCALL_ABORT 130 
#define  UCALL_DONE 129 
#define  UCALL_SYNC 128 
 int /*<<< orphan*/  VCPU_ID ; 
 int /*<<< orphan*/  X86_CR4_OSXSAVE ; 
 int X86_FEATURE_XSAVE ; 
 int FUNC1 (struct kvm_vm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kvm_vm*,int /*<<< orphan*/ ,struct ucall*) ; 
 int /*<<< orphan*/  guest_code ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct kvm_cpuid_entry2* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vm*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vm*,int /*<<< orphan*/ ,struct kvm_sregs*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vm*,int /*<<< orphan*/ ,struct kvm_sregs*) ; 
 struct kvm_run* FUNC12 (struct kvm_vm*,int /*<<< orphan*/ ) ; 
 struct kvm_vm* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC14(int argc, char *argv[])
{
	struct kvm_run *run;
	struct kvm_vm *vm;
	struct kvm_sregs sregs;
	struct kvm_cpuid_entry2 *entry;
	struct ucall uc;
	int rc;

	entry = FUNC5(1);
	if (!(entry->ecx & X86_FEATURE_XSAVE)) {
		FUNC7("XSAVE feature not supported, skipping test\n");
		return 0;
	}

	/* Tell stdout not to buffer its content */
	FUNC8(stdout, NULL);

	/* Create VM */
	vm = FUNC13(VCPU_ID, 0, guest_code);
	FUNC9(vm, VCPU_ID, FUNC4());
	run = FUNC12(vm, VCPU_ID);

	while (1) {
		rc = FUNC1(vm, VCPU_ID);

		FUNC0(rc == 0, "vcpu_run failed: %d\n", rc);
		FUNC0(run->exit_reason == KVM_EXIT_IO,
			    "Unexpected exit reason: %u (%s),\n",
			    run->exit_reason,
			    FUNC2(run->exit_reason));

		switch (FUNC3(vm, VCPU_ID, &uc)) {
		case UCALL_SYNC:
			/* emulate hypervisor clearing CR4.OSXSAVE */
			FUNC10(vm, VCPU_ID, &sregs);
			sregs.cr4 &= ~X86_CR4_OSXSAVE;
			FUNC11(vm, VCPU_ID, &sregs);
			break;
		case UCALL_ABORT:
			FUNC0(false, "Guest CR4 bit (OSXSAVE) unsynchronized with CPUID bit.");
			break;
		case UCALL_DONE:
			goto done;
		default:
			FUNC0(false, "Unknown ucall 0x%x.", uc.cmd);
		}
	}

	FUNC6(vm);

done:
	return 0;
}