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
struct vmx_pages {int vmcs_gpa; } ;

/* Variables and functions */
 scalar_t__ EXIT_REASON_VMCALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int L2_GUEST_STACK_SIZE ; 
 int /*<<< orphan*/  VM_EXIT_REASON ; 
 int /*<<< orphan*/  l2_guest_code ; 
 int FUNC3 (struct vmx_pages*) ; 
 int FUNC4 (struct vmx_pages*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmx_pages*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct vmx_pages *vmx)
{
#define L2_GUEST_STACK_SIZE 64
	unsigned long l2_guest_stack[L2_GUEST_STACK_SIZE];

	FUNC0(vmx->vmcs_gpa);
	FUNC0(FUNC4(vmx));
	FUNC0(FUNC3(vmx));

	FUNC5(vmx, l2_guest_code,
		     &l2_guest_stack[L2_GUEST_STACK_SIZE]);

	FUNC2(false);
	FUNC0(!FUNC6());
	FUNC2(false);
	FUNC0(FUNC7(VM_EXIT_REASON) == EXIT_REASON_VMCALL);
	FUNC1();
}