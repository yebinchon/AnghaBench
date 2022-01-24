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
typedef  int uint32_t ;
struct desc64 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_CR0 ; 
 int /*<<< orphan*/  HOST_CR3 ; 
 int /*<<< orphan*/  HOST_CR4 ; 
 int /*<<< orphan*/  HOST_CS_SELECTOR ; 
 int /*<<< orphan*/  HOST_DS_SELECTOR ; 
 int /*<<< orphan*/  HOST_ES_SELECTOR ; 
 int /*<<< orphan*/  HOST_FS_BASE ; 
 int /*<<< orphan*/  HOST_FS_SELECTOR ; 
 int /*<<< orphan*/  HOST_GDTR_BASE ; 
 int /*<<< orphan*/  HOST_GS_BASE ; 
 int /*<<< orphan*/  HOST_GS_SELECTOR ; 
 int /*<<< orphan*/  HOST_IA32_EFER ; 
 int /*<<< orphan*/  HOST_IA32_PAT ; 
 int /*<<< orphan*/  HOST_IA32_PERF_GLOBAL_CTRL ; 
 int /*<<< orphan*/  HOST_IA32_SYSENTER_CS ; 
 int /*<<< orphan*/  HOST_IA32_SYSENTER_EIP ; 
 int /*<<< orphan*/  HOST_IA32_SYSENTER_ESP ; 
 int /*<<< orphan*/  HOST_IDTR_BASE ; 
 int /*<<< orphan*/  HOST_SS_SELECTOR ; 
 int /*<<< orphan*/  HOST_TR_BASE ; 
 int /*<<< orphan*/  HOST_TR_SELECTOR ; 
 int /*<<< orphan*/  MSR_CORE_PERF_GLOBAL_CTRL ; 
 int /*<<< orphan*/  MSR_EFER ; 
 int /*<<< orphan*/  MSR_FS_BASE ; 
 int /*<<< orphan*/  MSR_GS_BASE ; 
 int /*<<< orphan*/  MSR_IA32_CR_PAT ; 
 int /*<<< orphan*/  MSR_IA32_SYSENTER_CS ; 
 int /*<<< orphan*/  MSR_IA32_SYSENTER_EIP ; 
 int /*<<< orphan*/  MSR_IA32_SYSENTER_ESP ; 
 int /*<<< orphan*/  VM_EXIT_CONTROLS ; 
 int VM_EXIT_LOAD_IA32_EFER ; 
 int VM_EXIT_LOAD_IA32_PAT ; 
 int VM_EXIT_LOAD_IA32_PERF_GLOBAL_CTRL ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (struct desc64*) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC16(void)
{
	uint32_t exit_controls = FUNC14(VM_EXIT_CONTROLS);

	FUNC15(HOST_ES_SELECTOR, FUNC6());
	FUNC15(HOST_CS_SELECTOR, FUNC3());
	FUNC15(HOST_SS_SELECTOR, FUNC11());
	FUNC15(HOST_DS_SELECTOR, FUNC5());
	FUNC15(HOST_FS_SELECTOR, FUNC7());
	FUNC15(HOST_GS_SELECTOR, FUNC9());
	FUNC15(HOST_TR_SELECTOR, FUNC12());

	if (exit_controls & VM_EXIT_LOAD_IA32_PAT)
		FUNC15(HOST_IA32_PAT, FUNC13(MSR_IA32_CR_PAT));
	if (exit_controls & VM_EXIT_LOAD_IA32_EFER)
		FUNC15(HOST_IA32_EFER, FUNC13(MSR_EFER));
	if (exit_controls & VM_EXIT_LOAD_IA32_PERF_GLOBAL_CTRL)
		FUNC15(HOST_IA32_PERF_GLOBAL_CTRL,
			FUNC13(MSR_CORE_PERF_GLOBAL_CTRL));

	FUNC15(HOST_IA32_SYSENTER_CS, FUNC13(MSR_IA32_SYSENTER_CS));

	FUNC15(HOST_CR0, FUNC0());
	FUNC15(HOST_CR3, FUNC1());
	FUNC15(HOST_CR4, FUNC2());
	FUNC15(HOST_FS_BASE, FUNC13(MSR_FS_BASE));
	FUNC15(HOST_GS_BASE, FUNC13(MSR_GS_BASE));
	FUNC15(HOST_TR_BASE,
		FUNC4((struct desc64 *)(FUNC8() + FUNC12())));
	FUNC15(HOST_GDTR_BASE, FUNC8());
	FUNC15(HOST_IDTR_BASE, FUNC10());
	FUNC15(HOST_IA32_SYSENTER_ESP, FUNC13(MSR_IA32_SYSENTER_ESP));
	FUNC15(HOST_IA32_SYSENTER_EIP, FUNC13(MSR_IA32_SYSENTER_EIP));
}