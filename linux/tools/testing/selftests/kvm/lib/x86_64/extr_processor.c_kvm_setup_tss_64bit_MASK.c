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
struct kvm_vm {scalar_t__ tss; } ;
struct kvm_segment {int limit; int selector; int type; int present; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_UTIL_MIN_VADDR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vm*,struct kvm_segment*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_segment*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct kvm_vm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(struct kvm_vm *vm, struct kvm_segment *segp,
				int selector, int gdt_memslot,
				int pgd_memslot)
{
	if (!vm->tss)
		vm->tss = FUNC3(vm, FUNC0(),
			KVM_UTIL_MIN_VADDR, gdt_memslot, pgd_memslot);

	FUNC2(segp, 0, sizeof(*segp));
	segp->base = vm->tss;
	segp->limit = 0x67;
	segp->selector = selector;
	segp->type = 0xb;
	segp->present = 1;
	FUNC1(vm, segp);
}