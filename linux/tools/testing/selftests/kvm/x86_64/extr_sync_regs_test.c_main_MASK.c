#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct kvm_vm {int dummy; } ;
struct kvm_vcpu_events {int dummy; } ;
struct kvm_sregs {int dummy; } ;
struct TYPE_8__ {int rbx; } ;
struct TYPE_7__ {int apic_base; } ;
struct TYPE_6__ {TYPE_4__ regs; int /*<<< orphan*/  events; TYPE_3__ sregs; } ;
struct TYPE_5__ {TYPE_2__ regs; } ;
struct kvm_run {int kvm_valid_regs; int kvm_dirty_regs; TYPE_1__ s; int /*<<< orphan*/  exit_reason; } ;
struct kvm_regs {int rbx; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int INVALID_SYNC_FIELD ; 
 int /*<<< orphan*/  KSFT_SKIP ; 
 int /*<<< orphan*/  KVM_CAP_SYNC_REGS ; 
 int /*<<< orphan*/  KVM_EXIT_IO ; 
 int KVM_SYNC_X86_REGS ; 
 int KVM_SYNC_X86_SREGS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int TEST_SYNC_FIELDS ; 
 int /*<<< orphan*/  VCPU_ID ; 
 int FUNC1 (struct kvm_vm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_regs*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_sregs*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu_events*,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  guest_code ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vm*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vm*,int /*<<< orphan*/ ,struct kvm_vcpu_events*) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vm*,int /*<<< orphan*/ ,struct kvm_regs*) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vm*,int /*<<< orphan*/ ,struct kvm_regs*) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vm*,int /*<<< orphan*/ ,struct kvm_sregs*) ; 
 struct kvm_run* FUNC15 (struct kvm_vm*,int /*<<< orphan*/ ) ; 
 struct kvm_vm* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC17(int argc, char *argv[])
{
	struct kvm_vm *vm;
	struct kvm_run *run;
	struct kvm_regs regs;
	struct kvm_sregs sregs;
	struct kvm_vcpu_events events;
	int rv, cap;

	/* Tell stdout not to buffer its content */
	FUNC10(stdout, NULL);

	cap = FUNC8(KVM_CAP_SYNC_REGS);
	if ((cap & TEST_SYNC_FIELDS) != TEST_SYNC_FIELDS) {
		FUNC7(stderr, "KVM_CAP_SYNC_REGS not supported, skipping test\n");
		FUNC5(KSFT_SKIP);
	}
	if ((cap & INVALID_SYNC_FIELD) != 0) {
		FUNC7(stderr, "The \"invalid\" field is not invalid, skipping test\n");
		FUNC5(KSFT_SKIP);
	}

	/* Create VM */
	vm = FUNC16(VCPU_ID, 0, guest_code);

	run = FUNC15(vm, VCPU_ID);

	/* Request reading invalid register set from VCPU. */
	run->kvm_valid_regs = INVALID_SYNC_FIELD;
	rv = FUNC1(vm, VCPU_ID);
	FUNC0(rv < 0 && errno == EINVAL,
		    "Invalid kvm_valid_regs did not cause expected KVM_RUN error: %d\n",
		    rv);
	FUNC15(vm, VCPU_ID)->kvm_valid_regs = 0;

	run->kvm_valid_regs = INVALID_SYNC_FIELD | TEST_SYNC_FIELDS;
	rv = FUNC1(vm, VCPU_ID);
	FUNC0(rv < 0 && errno == EINVAL,
		    "Invalid kvm_valid_regs did not cause expected KVM_RUN error: %d\n",
		    rv);
	FUNC15(vm, VCPU_ID)->kvm_valid_regs = 0;

	/* Request setting invalid register set into VCPU. */
	run->kvm_dirty_regs = INVALID_SYNC_FIELD;
	rv = FUNC1(vm, VCPU_ID);
	FUNC0(rv < 0 && errno == EINVAL,
		    "Invalid kvm_dirty_regs did not cause expected KVM_RUN error: %d\n",
		    rv);
	FUNC15(vm, VCPU_ID)->kvm_dirty_regs = 0;

	run->kvm_dirty_regs = INVALID_SYNC_FIELD | TEST_SYNC_FIELDS;
	rv = FUNC1(vm, VCPU_ID);
	FUNC0(rv < 0 && errno == EINVAL,
		    "Invalid kvm_dirty_regs did not cause expected KVM_RUN error: %d\n",
		    rv);
	FUNC15(vm, VCPU_ID)->kvm_dirty_regs = 0;

	/* Request and verify all valid register sets. */
	/* TODO: BUILD TIME CHECK: TEST_ASSERT(KVM_SYNC_X86_NUM_FIELDS != 3); */
	run->kvm_valid_regs = TEST_SYNC_FIELDS;
	rv = FUNC1(vm, VCPU_ID);
	FUNC0(run->exit_reason == KVM_EXIT_IO,
		    "Unexpected exit reason: %u (%s),\n",
		    run->exit_reason,
		    FUNC6(run->exit_reason));

	FUNC12(vm, VCPU_ID, &regs);
	FUNC2(&regs, &run->s.regs.regs);

	FUNC14(vm, VCPU_ID, &sregs);
	FUNC3(&sregs, &run->s.regs.sregs);

	FUNC11(vm, VCPU_ID, &events);
	FUNC4(&events, &run->s.regs.events);

	/* Set and verify various register values. */
	run->s.regs.regs.rbx = 0xBAD1DEA;
	run->s.regs.sregs.apic_base = 1 << 11;
	/* TODO run->s.regs.events.XYZ = ABC; */

	run->kvm_valid_regs = TEST_SYNC_FIELDS;
	run->kvm_dirty_regs = KVM_SYNC_X86_REGS | KVM_SYNC_X86_SREGS;
	rv = FUNC1(vm, VCPU_ID);
	FUNC0(run->exit_reason == KVM_EXIT_IO,
		    "Unexpected exit reason: %u (%s),\n",
		    run->exit_reason,
		    FUNC6(run->exit_reason));
	FUNC0(run->s.regs.regs.rbx == 0xBAD1DEA + 1,
		    "rbx sync regs value incorrect 0x%llx.",
		    run->s.regs.regs.rbx);
	FUNC0(run->s.regs.sregs.apic_base == 1 << 11,
		    "apic_base sync regs value incorrect 0x%llx.",
		    run->s.regs.sregs.apic_base);

	FUNC12(vm, VCPU_ID, &regs);
	FUNC2(&regs, &run->s.regs.regs);

	FUNC14(vm, VCPU_ID, &sregs);
	FUNC3(&sregs, &run->s.regs.sregs);

	FUNC11(vm, VCPU_ID, &events);
	FUNC4(&events, &run->s.regs.events);

	/* Clear kvm_dirty_regs bits, verify new s.regs values are
	 * overwritten with existing guest values.
	 */
	run->kvm_valid_regs = TEST_SYNC_FIELDS;
	run->kvm_dirty_regs = 0;
	run->s.regs.regs.rbx = 0xDEADBEEF;
	rv = FUNC1(vm, VCPU_ID);
	FUNC0(run->exit_reason == KVM_EXIT_IO,
		    "Unexpected exit reason: %u (%s),\n",
		    run->exit_reason,
		    FUNC6(run->exit_reason));
	FUNC0(run->s.regs.regs.rbx != 0xDEADBEEF,
		    "rbx sync regs value incorrect 0x%llx.",
		    run->s.regs.regs.rbx);

	/* Clear kvm_valid_regs bits and kvm_dirty_bits.
	 * Verify s.regs values are not overwritten with existing guest values
	 * and that guest values are not overwritten with kvm_sync_regs values.
	 */
	run->kvm_valid_regs = 0;
	run->kvm_dirty_regs = 0;
	run->s.regs.regs.rbx = 0xAAAA;
	regs.rbx = 0xBAC0;
	FUNC13(vm, VCPU_ID, &regs);
	rv = FUNC1(vm, VCPU_ID);
	FUNC0(run->exit_reason == KVM_EXIT_IO,
		    "Unexpected exit reason: %u (%s),\n",
		    run->exit_reason,
		    FUNC6(run->exit_reason));
	FUNC0(run->s.regs.regs.rbx == 0xAAAA,
		    "rbx sync regs value incorrect 0x%llx.",
		    run->s.regs.regs.rbx);
	FUNC12(vm, VCPU_ID, &regs);
	FUNC0(regs.rbx == 0xBAC0 + 1,
		    "rbx guest value incorrect 0x%llx.",
		    regs.rbx);

	/* Clear kvm_valid_regs bits. Verify s.regs values are not overwritten
	 * with existing guest values but that guest values are overwritten
	 * with kvm_sync_regs values.
	 */
	run->kvm_valid_regs = 0;
	run->kvm_dirty_regs = TEST_SYNC_FIELDS;
	run->s.regs.regs.rbx = 0xBBBB;
	rv = FUNC1(vm, VCPU_ID);
	FUNC0(run->exit_reason == KVM_EXIT_IO,
		    "Unexpected exit reason: %u (%s),\n",
		    run->exit_reason,
		    FUNC6(run->exit_reason));
	FUNC0(run->s.regs.regs.rbx == 0xBBBB,
		    "rbx sync regs value incorrect 0x%llx.",
		    run->s.regs.regs.rbx);
	FUNC12(vm, VCPU_ID, &regs);
	FUNC0(regs.rbx == 0xBBBB + 1,
		    "rbx guest value incorrect 0x%llx.",
		    regs.rbx);

	FUNC9(vm);

	return 0;
}