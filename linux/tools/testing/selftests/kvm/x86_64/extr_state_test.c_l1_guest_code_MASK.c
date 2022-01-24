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
struct vmx_pages {int vmcs_gpa; int shadow_vmcs_gpa; } ;

/* Variables and functions */
 int EXIT_REASON_VMCALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GUEST_RIP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int L2_GUEST_STACK_SIZE ; 
 int SECONDARY_EXEC_SHADOW_VMCS ; 
 int /*<<< orphan*/  SECONDARY_VM_EXEC_CONTROL ; 
 int /*<<< orphan*/  VMCS_LINK_POINTER ; 
 int /*<<< orphan*/  VM_EXIT_REASON ; 
 int /*<<< orphan*/  l2_guest_code ; 
 int FUNC2 (struct vmx_pages*) ; 
 int FUNC3 (struct vmx_pages*) ; 
 int /*<<< orphan*/  FUNC4 (struct vmx_pages*,int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

void FUNC11(struct vmx_pages *vmx_pages)
{
#define L2_GUEST_STACK_SIZE 64
        unsigned long l2_guest_stack[L2_GUEST_STACK_SIZE];

	FUNC0(vmx_pages->vmcs_gpa);
	FUNC0(FUNC3(vmx_pages));
	FUNC1(3);
	FUNC0(FUNC2(vmx_pages));
	FUNC0(FUNC7() == vmx_pages->vmcs_gpa);

	FUNC1(4);
	FUNC0(FUNC7() == vmx_pages->vmcs_gpa);

	FUNC4(vmx_pages, l2_guest_code,
		     &l2_guest_stack[L2_GUEST_STACK_SIZE]);

	FUNC1(5);
	FUNC0(FUNC7() == vmx_pages->vmcs_gpa);
	FUNC0(!FUNC5());
	FUNC0(FUNC7() == vmx_pages->vmcs_gpa);
	FUNC0(FUNC8(VM_EXIT_REASON) == EXIT_REASON_VMCALL);

	/* Check that the launched state is preserved.  */
	FUNC0(FUNC5());

	FUNC0(!FUNC9());
	FUNC0(FUNC8(VM_EXIT_REASON) == EXIT_REASON_VMCALL);

	FUNC1(7);
	FUNC0(FUNC8(VM_EXIT_REASON) == EXIT_REASON_VMCALL);

	FUNC0(!FUNC9());
	FUNC0(FUNC8(VM_EXIT_REASON) == EXIT_REASON_VMCALL);

	FUNC10(GUEST_RIP, FUNC8(GUEST_RIP) + 3);

	FUNC10(SECONDARY_VM_EXEC_CONTROL, SECONDARY_EXEC_SHADOW_VMCS);
	FUNC10(VMCS_LINK_POINTER, vmx_pages->shadow_vmcs_gpa);

	FUNC0(!FUNC6(vmx_pages->shadow_vmcs_gpa));
	FUNC0(FUNC5());
	FUNC1(8);
	FUNC0(FUNC5());
	FUNC0(FUNC9());

	FUNC10(GUEST_RIP, 0xc0ffee);
	FUNC1(9);
	FUNC0(FUNC8(GUEST_RIP) == 0xc0ffee);

	FUNC0(!FUNC6(vmx_pages->vmcs_gpa));
	FUNC0(!FUNC9());
	FUNC0(FUNC8(VM_EXIT_REASON) == EXIT_REASON_VMCALL);

	FUNC0(!FUNC6(vmx_pages->shadow_vmcs_gpa));
	FUNC0(FUNC8(GUEST_RIP) == 0xc0ffffee);
	FUNC0(FUNC5());
	FUNC0(FUNC9());
	FUNC1(13);
	FUNC0(FUNC8(GUEST_RIP) == 0xc0ffffee);
	FUNC0(FUNC5());
	FUNC0(FUNC9());
}