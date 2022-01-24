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
typedef  int uint64_t ;
struct kvm_vm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KSFT_SKIP ; 
 int /*<<< orphan*/  KVM_CAP_MSR_PLATFORM_INFO ; 
 int /*<<< orphan*/  MSR_PLATFORM_INFO ; 
 int MSR_PLATFORM_INFO_MAX_TURBO_RATIO ; 
 int /*<<< orphan*/  VCPU_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  guest_code ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vm*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vm*) ; 
 int FUNC7 (struct kvm_vm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct kvm_vm* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(int argc, char *argv[])
{
	struct kvm_vm *vm;
	int rv;
	uint64_t msr_platform_info;

	/* Tell stdout not to buffer its content */
	FUNC4(stdout, NULL);

	rv = FUNC2(KVM_CAP_MSR_PLATFORM_INFO);
	if (!rv) {
		FUNC1(stderr,
			"KVM_CAP_MSR_PLATFORM_INFO not supported, skip test\n");
		FUNC0(KSFT_SKIP);
	}

	vm = FUNC9(VCPU_ID, 0, guest_code);

	msr_platform_info = FUNC7(vm, VCPU_ID, MSR_PLATFORM_INFO);
	FUNC8(vm, VCPU_ID, MSR_PLATFORM_INFO,
		msr_platform_info | MSR_PLATFORM_INFO_MAX_TURBO_RATIO);
	FUNC6(vm);
	FUNC5(vm);
	FUNC8(vm, VCPU_ID, MSR_PLATFORM_INFO, msr_platform_info);

	FUNC3(vm);

	return 0;
}