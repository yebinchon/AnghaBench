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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  GUEST_ACTIVITY_STATE ; 
 int /*<<< orphan*/  GUEST_CR0 ; 
 int /*<<< orphan*/  GUEST_CR3 ; 
 int /*<<< orphan*/  GUEST_CR4 ; 
 int /*<<< orphan*/  GUEST_CS_AR_BYTES ; 
 int /*<<< orphan*/  GUEST_CS_BASE ; 
 int /*<<< orphan*/  GUEST_CS_LIMIT ; 
 int /*<<< orphan*/  GUEST_CS_SELECTOR ; 
 int /*<<< orphan*/  GUEST_DR7 ; 
 int /*<<< orphan*/  GUEST_DS_AR_BYTES ; 
 int /*<<< orphan*/  GUEST_DS_BASE ; 
 int /*<<< orphan*/  GUEST_DS_LIMIT ; 
 int /*<<< orphan*/  GUEST_DS_SELECTOR ; 
 int /*<<< orphan*/  GUEST_ES_AR_BYTES ; 
 int /*<<< orphan*/  GUEST_ES_BASE ; 
 int /*<<< orphan*/  GUEST_ES_LIMIT ; 
 int /*<<< orphan*/  GUEST_ES_SELECTOR ; 
 int /*<<< orphan*/  GUEST_FS_AR_BYTES ; 
 int /*<<< orphan*/  GUEST_FS_BASE ; 
 int /*<<< orphan*/  GUEST_FS_LIMIT ; 
 int /*<<< orphan*/  GUEST_FS_SELECTOR ; 
 int /*<<< orphan*/  GUEST_GDTR_BASE ; 
 int /*<<< orphan*/  GUEST_GDTR_LIMIT ; 
 int /*<<< orphan*/  GUEST_GS_AR_BYTES ; 
 int /*<<< orphan*/  GUEST_GS_BASE ; 
 int /*<<< orphan*/  GUEST_GS_LIMIT ; 
 int /*<<< orphan*/  GUEST_GS_SELECTOR ; 
 int /*<<< orphan*/  GUEST_IA32_DEBUGCTL ; 
 int /*<<< orphan*/  GUEST_IA32_EFER ; 
 int /*<<< orphan*/  GUEST_IA32_PAT ; 
 int /*<<< orphan*/  GUEST_IA32_PERF_GLOBAL_CTRL ; 
 int /*<<< orphan*/  GUEST_IDTR_BASE ; 
 int /*<<< orphan*/  GUEST_IDTR_LIMIT ; 
 int /*<<< orphan*/  GUEST_INTERRUPTIBILITY_INFO ; 
 int /*<<< orphan*/  GUEST_INTR_STATUS ; 
 int /*<<< orphan*/  GUEST_LDTR_AR_BYTES ; 
 int /*<<< orphan*/  GUEST_LDTR_BASE ; 
 int /*<<< orphan*/  GUEST_LDTR_LIMIT ; 
 int /*<<< orphan*/  GUEST_LDTR_SELECTOR ; 
 int /*<<< orphan*/  GUEST_PENDING_DBG_EXCEPTIONS ; 
 int /*<<< orphan*/  GUEST_PML_INDEX ; 
 int /*<<< orphan*/  GUEST_RFLAGS ; 
 int /*<<< orphan*/  GUEST_RIP ; 
 int /*<<< orphan*/  GUEST_RSP ; 
 int /*<<< orphan*/  GUEST_SS_AR_BYTES ; 
 int /*<<< orphan*/  GUEST_SS_BASE ; 
 int /*<<< orphan*/  GUEST_SS_LIMIT ; 
 int /*<<< orphan*/  GUEST_SS_SELECTOR ; 
 int /*<<< orphan*/  GUEST_SYSENTER_CS ; 
 int /*<<< orphan*/  GUEST_SYSENTER_EIP ; 
 int /*<<< orphan*/  GUEST_SYSENTER_ESP ; 
 int /*<<< orphan*/  GUEST_TR_AR_BYTES ; 
 int /*<<< orphan*/  GUEST_TR_BASE ; 
 int /*<<< orphan*/  GUEST_TR_LIMIT ; 
 int /*<<< orphan*/  GUEST_TR_SELECTOR ; 
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
 int /*<<< orphan*/  VMCS_LINK_POINTER ; 
 int /*<<< orphan*/  VMX_PREEMPTION_TIMER_VALUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(void *rip, void *rsp)
{
	FUNC1(GUEST_ES_SELECTOR, FUNC0(HOST_ES_SELECTOR));
	FUNC1(GUEST_CS_SELECTOR, FUNC0(HOST_CS_SELECTOR));
	FUNC1(GUEST_SS_SELECTOR, FUNC0(HOST_SS_SELECTOR));
	FUNC1(GUEST_DS_SELECTOR, FUNC0(HOST_DS_SELECTOR));
	FUNC1(GUEST_FS_SELECTOR, FUNC0(HOST_FS_SELECTOR));
	FUNC1(GUEST_GS_SELECTOR, FUNC0(HOST_GS_SELECTOR));
	FUNC1(GUEST_LDTR_SELECTOR, 0);
	FUNC1(GUEST_TR_SELECTOR, FUNC0(HOST_TR_SELECTOR));
	FUNC1(GUEST_INTR_STATUS, 0);
	FUNC1(GUEST_PML_INDEX, 0);

	FUNC1(VMCS_LINK_POINTER, -1ll);
	FUNC1(GUEST_IA32_DEBUGCTL, 0);
	FUNC1(GUEST_IA32_PAT, FUNC0(HOST_IA32_PAT));
	FUNC1(GUEST_IA32_EFER, FUNC0(HOST_IA32_EFER));
	FUNC1(GUEST_IA32_PERF_GLOBAL_CTRL,
		FUNC0(HOST_IA32_PERF_GLOBAL_CTRL));

	FUNC1(GUEST_ES_LIMIT, -1);
	FUNC1(GUEST_CS_LIMIT, -1);
	FUNC1(GUEST_SS_LIMIT, -1);
	FUNC1(GUEST_DS_LIMIT, -1);
	FUNC1(GUEST_FS_LIMIT, -1);
	FUNC1(GUEST_GS_LIMIT, -1);
	FUNC1(GUEST_LDTR_LIMIT, -1);
	FUNC1(GUEST_TR_LIMIT, 0x67);
	FUNC1(GUEST_GDTR_LIMIT, 0xffff);
	FUNC1(GUEST_IDTR_LIMIT, 0xffff);
	FUNC1(GUEST_ES_AR_BYTES,
		FUNC0(GUEST_ES_SELECTOR) == 0 ? 0x10000 : 0xc093);
	FUNC1(GUEST_CS_AR_BYTES, 0xa09b);
	FUNC1(GUEST_SS_AR_BYTES, 0xc093);
	FUNC1(GUEST_DS_AR_BYTES,
		FUNC0(GUEST_DS_SELECTOR) == 0 ? 0x10000 : 0xc093);
	FUNC1(GUEST_FS_AR_BYTES,
		FUNC0(GUEST_FS_SELECTOR) == 0 ? 0x10000 : 0xc093);
	FUNC1(GUEST_GS_AR_BYTES,
		FUNC0(GUEST_GS_SELECTOR) == 0 ? 0x10000 : 0xc093);
	FUNC1(GUEST_LDTR_AR_BYTES, 0x10000);
	FUNC1(GUEST_TR_AR_BYTES, 0x8b);
	FUNC1(GUEST_INTERRUPTIBILITY_INFO, 0);
	FUNC1(GUEST_ACTIVITY_STATE, 0);
	FUNC1(GUEST_SYSENTER_CS, FUNC0(HOST_IA32_SYSENTER_CS));
	FUNC1(VMX_PREEMPTION_TIMER_VALUE, 0);

	FUNC1(GUEST_CR0, FUNC0(HOST_CR0));
	FUNC1(GUEST_CR3, FUNC0(HOST_CR3));
	FUNC1(GUEST_CR4, FUNC0(HOST_CR4));
	FUNC1(GUEST_ES_BASE, 0);
	FUNC1(GUEST_CS_BASE, 0);
	FUNC1(GUEST_SS_BASE, 0);
	FUNC1(GUEST_DS_BASE, 0);
	FUNC1(GUEST_FS_BASE, FUNC0(HOST_FS_BASE));
	FUNC1(GUEST_GS_BASE, FUNC0(HOST_GS_BASE));
	FUNC1(GUEST_LDTR_BASE, 0);
	FUNC1(GUEST_TR_BASE, FUNC0(HOST_TR_BASE));
	FUNC1(GUEST_GDTR_BASE, FUNC0(HOST_GDTR_BASE));
	FUNC1(GUEST_IDTR_BASE, FUNC0(HOST_IDTR_BASE));
	FUNC1(GUEST_DR7, 0x400);
	FUNC1(GUEST_RSP, (uint64_t)rsp);
	FUNC1(GUEST_RIP, (uint64_t)rip);
	FUNC1(GUEST_RFLAGS, 2);
	FUNC1(GUEST_PENDING_DBG_EXCEPTIONS, 0);
	FUNC1(GUEST_SYSENTER_ESP, FUNC0(HOST_IA32_SYSENTER_ESP));
	FUNC1(GUEST_SYSENTER_EIP, FUNC0(HOST_IA32_SYSENTER_EIP));
}