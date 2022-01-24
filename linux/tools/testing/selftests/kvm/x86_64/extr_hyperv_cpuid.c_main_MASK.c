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
struct kvm_vm {int dummy; } ;
struct kvm_cpuid2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KSFT_SKIP ; 
 int /*<<< orphan*/  KVM_CAP_HYPERV_CPUID ; 
 int /*<<< orphan*/  KVM_CAP_HYPERV_ENLIGHTENED_VMCS ; 
 int /*<<< orphan*/  VCPU_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_cpuid2*) ; 
 int /*<<< orphan*/  guest_code ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct kvm_cpuid2* FUNC4 (struct kvm_vm*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vm*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_cpuid2*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vm*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vm*,int /*<<< orphan*/ ) ; 
 struct kvm_vm* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(int argc, char *argv[])
{
	struct kvm_vm *vm;
	int rv;
	struct kvm_cpuid2 *hv_cpuid_entries;

	/* Tell stdout not to buffer its content */
	FUNC6(stdout, NULL);

	rv = FUNC3(KVM_CAP_HYPERV_CPUID);
	if (!rv) {
		FUNC1(stderr,
			"KVM_CAP_HYPERV_CPUID not supported, skip test\n");
		FUNC0(KSFT_SKIP);
	}

	/* Create VM */
	vm = FUNC10(VCPU_ID, 0, guest_code);

	FUNC8(vm);

	hv_cpuid_entries = FUNC4(vm);
	if (!hv_cpuid_entries)
		return 1;

	FUNC7(hv_cpuid_entries, 0);

	FUNC2(hv_cpuid_entries);

	if (!FUNC3(KVM_CAP_HYPERV_ENLIGHTENED_VMCS)) {
		FUNC1(stderr,
			"Enlightened VMCS is unsupported, skip related test\n");
		goto vm_free;
	}

	FUNC9(vm, VCPU_ID);

	hv_cpuid_entries = FUNC4(vm);
	if (!hv_cpuid_entries)
		return 1;

	FUNC7(hv_cpuid_entries, 1);

	FUNC2(hv_cpuid_entries);

vm_free:
	FUNC5(vm);

	return 0;
}