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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct kvm_vm {int page_size; int pgd; } ;
struct kvm_sregs {int* crs; } ;
struct kvm_run {int psw_mask; uintptr_t psw_addr; } ;
struct kvm_regs {scalar_t__* gprs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_GUEST_STACK_VADDR_MIN ; 
 size_t DEFAULT_STACK_PGS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 size_t FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vm*,int /*<<< orphan*/ ,struct kvm_regs*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vm*,int /*<<< orphan*/ ,struct kvm_regs*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vm*,int /*<<< orphan*/ ,struct kvm_sregs*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vm*,int /*<<< orphan*/ ,struct kvm_sregs*) ; 
 struct kvm_run* FUNC6 (struct kvm_vm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct kvm_vm*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vm*,int /*<<< orphan*/ ) ; 

void FUNC9(struct kvm_vm *vm, uint32_t vcpuid, void *guest_code)
{
	size_t stack_size =  DEFAULT_STACK_PGS * FUNC1();
	uint64_t stack_vaddr;
	struct kvm_regs regs;
	struct kvm_sregs sregs;
	struct kvm_run *run;

	FUNC0(vm->page_size == 4096, "Unsupported page size: 0x%x",
		    vm->page_size);

	stack_vaddr = FUNC7(vm, stack_size,
				     DEFAULT_GUEST_STACK_VADDR_MIN, 0, 0);

	FUNC8(vm, vcpuid);

	/* Setup guest registers */
	FUNC2(vm, vcpuid, &regs);
	regs.gprs[15] = stack_vaddr + (DEFAULT_STACK_PGS * FUNC1()) - 160;
	FUNC3(vm, vcpuid, &regs);

	FUNC4(vm, vcpuid, &sregs);
	sregs.crs[0] |= 0x00040000;		/* Enable floating point regs */
	sregs.crs[1] = vm->pgd | 0xf;		/* Primary region table */
	FUNC5(vm, vcpuid, &sregs);

	run = FUNC6(vm, vcpuid);
	run->psw_mask = 0x0400000180000000ULL;  /* DAT enabled + 64 bit mode */
	run->psw_addr = (uintptr_t)guest_code;
}