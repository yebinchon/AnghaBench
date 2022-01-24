#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_vaddr_t ;
struct ucall {char const* cmd; scalar_t__* args; } ;
struct TYPE_2__ {scalar_t__ port; } ;
struct kvm_run {scalar_t__ exit_reason; TYPE_1__ io; } ;

/* Variables and functions */
 scalar_t__ KVM_EXIT_IO ; 
 scalar_t__ PORT_L0_EXIT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,...) ; 
#define  UCALL_ABORT 128 
 int /*<<< orphan*/  VCPU_ID ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucall*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ l1_guest_code ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kvm_run* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

int FUNC11(int argc, char *argv[])
{
	vm_vaddr_t vmx_pages_gva;

	FUNC4();

	vm = FUNC10(VCPU_ID, 0, (void *) l1_guest_code);
	FUNC8(vm, VCPU_ID, FUNC3());

	/* Allocate VMX pages and shared descriptors (vmx_pages). */
	FUNC5(vm, &vmx_pages_gva);
	FUNC6(vm, VCPU_ID, 1, vmx_pages_gva);

	for (;;) {
		volatile struct kvm_run *run = FUNC9(vm, VCPU_ID);
		struct ucall uc;

		FUNC7(vm, VCPU_ID);
		FUNC0(run->exit_reason == KVM_EXIT_IO,
			    "Got exit_reason other than KVM_EXIT_IO: %u (%s)\n",
			    run->exit_reason,
			    FUNC1(run->exit_reason));

		if (run->io.port == PORT_L0_EXIT)
			break;

		switch (FUNC2(vm, VCPU_ID, &uc)) {
		case UCALL_ABORT:
			FUNC0(false, "%s", (const char *)uc.args[0]);
			/* NOT REACHED */
		default:
			FUNC0(false, "Unknown ucall 0x%x.", uc.cmd);
		}
	}
}