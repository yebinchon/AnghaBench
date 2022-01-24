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
struct vmx_pages {int vmcs_gpa; scalar_t__ enlightened_vmcs_gpa; int /*<<< orphan*/  vp_assist; int /*<<< orphan*/  vp_assist_gpa; } ;

/* Variables and functions */
 scalar_t__ EXIT_REASON_VMCALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int L2_GUEST_STACK_SIZE ; 
 int /*<<< orphan*/  VM_EXIT_REASON ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2_guest_code ; 
 int FUNC3 (struct vmx_pages*) ; 
 int FUNC4 (struct vmx_pages*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmx_pages*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(struct vmx_pages *vmx_pages)
{
#define L2_GUEST_STACK_SIZE 64
	unsigned long l2_guest_stack[L2_GUEST_STACK_SIZE];

	FUNC2(vmx_pages->vp_assist_gpa, vmx_pages->vp_assist);

	FUNC0(vmx_pages->vmcs_gpa);
	FUNC0(FUNC4(vmx_pages));
	FUNC1(3);
	FUNC0(FUNC3(vmx_pages));
	FUNC0(FUNC7() == vmx_pages->enlightened_vmcs_gpa);

	FUNC1(4);
	FUNC0(FUNC7() == vmx_pages->enlightened_vmcs_gpa);

	FUNC5(vmx_pages, l2_guest_code,
		     &l2_guest_stack[L2_GUEST_STACK_SIZE]);

	FUNC1(5);
	FUNC0(FUNC7() == vmx_pages->enlightened_vmcs_gpa);
	FUNC0(!FUNC6());
	FUNC0(FUNC7() == vmx_pages->enlightened_vmcs_gpa);
	FUNC1(8);
	FUNC0(!FUNC9());
	FUNC0(FUNC8(VM_EXIT_REASON) == EXIT_REASON_VMCALL);
	FUNC1(9);
}