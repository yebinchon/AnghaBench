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
struct vmx_pages {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int L2_GUEST_STACK_SIZE ; 
 int /*<<< orphan*/  l2_guest_code ; 
 int FUNC1 (struct vmx_pages*) ; 
 int FUNC2 (struct vmx_pages*) ; 
 int /*<<< orphan*/  FUNC3 (struct vmx_pages*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct vmx_pages *vmx_pages)
{
#define L2_GUEST_STACK_SIZE 64
	unsigned long l2_guest_stack[L2_GUEST_STACK_SIZE];

	FUNC0(FUNC2(vmx_pages));
	FUNC0(FUNC1(vmx_pages));

	/* Prepare the VMCS for L2 execution. */
	FUNC3(vmx_pages, l2_guest_code,
		     &l2_guest_stack[L2_GUEST_STACK_SIZE]);

	FUNC0(!FUNC4());
	FUNC0(0);
}