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
struct kvm_nested_state {int flags; scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  KSFT_SKIP ; 
 int /*<<< orphan*/  KVM_CAP_HYPERV_ENLIGHTENED_VMCS ; 
 int /*<<< orphan*/  KVM_CAP_NESTED_STATE ; 
 int KVM_STATE_NESTED_RUN_PENDING ; 
 int /*<<< orphan*/  VCPU_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  have_evmcs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vm*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_nested_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vm*,struct kvm_nested_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vm*) ; 
 struct kvm_vm* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(int argc, char *argv[])
{
	struct kvm_vm *vm;
	struct kvm_nested_state state;

	have_evmcs = FUNC1(KVM_CAP_HYPERV_ENLIGHTENED_VMCS);

	if (!FUNC1(KVM_CAP_NESTED_STATE)) {
		FUNC4("KVM_CAP_NESTED_STATE not available, skipping test\n");
		FUNC0(KSFT_SKIP);
	}

	/*
	 * AMD currently does not implement set_nested_state, so for now we
	 * just early out.
	 */
	FUNC3();

	vm = FUNC9(VCPU_ID, 0, 0);

	/* Passing a NULL kvm_nested_state causes a EFAULT. */
	FUNC6(vm, NULL);

	/* 'size' cannot be smaller than sizeof(kvm_nested_state). */
	FUNC5(&state);
	state.size = 0;
	FUNC7(vm, &state);

	/*
	 * Setting the flags 0xf fails the flags check.  The only flags that
	 * can be used are:
	 *     KVM_STATE_NESTED_GUEST_MODE
	 *     KVM_STATE_NESTED_RUN_PENDING
	 *     KVM_STATE_NESTED_EVMCS
	 */
	FUNC5(&state);
	state.flags = 0xf;
	FUNC7(vm, &state);

	/*
	 * If KVM_STATE_NESTED_RUN_PENDING is set then
	 * KVM_STATE_NESTED_GUEST_MODE has to be set as well.
	 */
	FUNC5(&state);
	state.flags = KVM_STATE_NESTED_RUN_PENDING;
	FUNC7(vm, &state);

	FUNC8(vm);

	FUNC2(vm);
	return 0;
}