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
typedef  uintptr_t uint32_t ;
struct vmx_pages {int dummy; } ;

/* Variables and functions */
 uintptr_t CPU_BASED_USE_MSR_BITMAPS ; 
 uintptr_t CPU_BASED_USE_TSC_OFFSETING ; 
 int /*<<< orphan*/  CPU_BASED_VM_EXEC_CONTROL ; 
 uintptr_t EXIT_REASON_FAILED_VMENTRY ; 
 uintptr_t EXIT_REASON_INVALID_STATE ; 
 uintptr_t EXIT_REASON_VMCALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GUEST_CR3 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int L2_GUEST_STACK_SIZE ; 
 int /*<<< orphan*/  MSR_IA32_TSC ; 
 int TSC_ADJUST_VALUE ; 
 int /*<<< orphan*/  TSC_OFFSET ; 
 uintptr_t TSC_OFFSET_VALUE ; 
 int /*<<< orphan*/  VM_EXIT_REASON ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  l2_guest_code ; 
 int FUNC3 (struct vmx_pages*) ; 
 int FUNC4 (struct vmx_pages*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmx_pages*,int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 uintptr_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,uintptr_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct vmx_pages *vmx_pages)
{
#define L2_GUEST_STACK_SIZE 64
	unsigned long l2_guest_stack[L2_GUEST_STACK_SIZE];
	uint32_t control;
	uintptr_t save_cr3;

	FUNC0(FUNC6() < TSC_ADJUST_VALUE);
	FUNC10(MSR_IA32_TSC, FUNC6() - TSC_ADJUST_VALUE);
	FUNC2(-1 * TSC_ADJUST_VALUE);

	FUNC0(FUNC4(vmx_pages));
	FUNC0(FUNC3(vmx_pages));

	/* Prepare the VMCS for L2 execution. */
	FUNC5(vmx_pages, l2_guest_code,
		     &l2_guest_stack[L2_GUEST_STACK_SIZE]);
	control = FUNC8(CPU_BASED_VM_EXEC_CONTROL);
	control |= CPU_BASED_USE_MSR_BITMAPS | CPU_BASED_USE_TSC_OFFSETING;
	FUNC9(CPU_BASED_VM_EXEC_CONTROL, control);
	FUNC9(TSC_OFFSET, TSC_OFFSET_VALUE);

	/* Jump into L2.  First, test failure to load guest CR3.  */
	save_cr3 = FUNC8(GUEST_CR3);
	FUNC9(GUEST_CR3, -1ull);
	FUNC0(!FUNC7());
	FUNC0(FUNC8(VM_EXIT_REASON) ==
		     (EXIT_REASON_FAILED_VMENTRY | EXIT_REASON_INVALID_STATE));
	FUNC2(-1 * TSC_ADJUST_VALUE);
	FUNC9(GUEST_CR3, save_cr3);

	FUNC0(!FUNC7());
	FUNC0(FUNC8(VM_EXIT_REASON) == EXIT_REASON_VMCALL);

	FUNC2(-2 * TSC_ADJUST_VALUE);

	FUNC1();
}