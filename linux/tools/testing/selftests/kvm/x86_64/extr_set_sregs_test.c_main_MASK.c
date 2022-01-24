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
struct kvm_sregs {int apic_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  VCPU_ID ; 
 int FUNC1 (struct kvm_vm*,int /*<<< orphan*/ ,struct kvm_sregs*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vm*,int /*<<< orphan*/ ,struct kvm_sregs*) ; 
 struct kvm_vm* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(int argc, char *argv[])
{
	struct kvm_sregs sregs;
	struct kvm_vm *vm;
	int rc;

	/* Tell stdout not to buffer its content */
	FUNC3(stdout, NULL);

	/* Create VM */
	vm = FUNC5(VCPU_ID, 0, NULL);

	FUNC4(vm, VCPU_ID, &sregs);
	sregs.apic_base = 1 << 10;
	rc = FUNC1(vm, VCPU_ID, &sregs);
	FUNC0(rc, "Set IA32_APIC_BASE to %llx (invalid)",
		    sregs.apic_base);
	sregs.apic_base = 1 << 11;
	rc = FUNC1(vm, VCPU_ID, &sregs);
	FUNC0(!rc, "Couldn't set IA32_APIC_BASE to %llx (valid)",
		    sregs.apic_base);

	FUNC2(vm);

	return 0;
}