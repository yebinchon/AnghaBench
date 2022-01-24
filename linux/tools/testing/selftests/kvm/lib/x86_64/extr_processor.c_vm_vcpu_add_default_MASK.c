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
typedef  scalar_t__ vm_vaddr_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct kvm_vm {int dummy; } ;
struct kvm_regs {int rflags; unsigned long rip; scalar_t__ rsp; } ;
struct kvm_mp_state {scalar_t__ mp_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_GUEST_STACK_VADDR_MIN ; 
 int DEFAULT_STACK_PGS ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vm*,int /*<<< orphan*/ ,struct kvm_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vm*,int /*<<< orphan*/ ,struct kvm_regs*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vm*,int /*<<< orphan*/ ,struct kvm_mp_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct kvm_vm*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vm*,int /*<<< orphan*/ ) ; 

void FUNC7(struct kvm_vm *vm, uint32_t vcpuid, void *guest_code)
{
	struct kvm_mp_state mp_state;
	struct kvm_regs regs;
	vm_vaddr_t stack_vaddr;
	stack_vaddr = FUNC5(vm, DEFAULT_STACK_PGS * FUNC0(),
				     DEFAULT_GUEST_STACK_VADDR_MIN, 0, 0);

	/* Create VCPU */
	FUNC6(vm, vcpuid);
	FUNC4(vm, vcpuid, 0, 0);

	/* Setup guest general purpose registers */
	FUNC1(vm, vcpuid, &regs);
	regs.rflags = regs.rflags | 0x2;
	regs.rsp = stack_vaddr + (DEFAULT_STACK_PGS * FUNC0());
	regs.rip = (unsigned long) guest_code;
	FUNC2(vm, vcpuid, &regs);

	/* Setup the MP state */
	mp_state.mp_state = 0;
	FUNC3(vm, vcpuid, &mp_state);
}