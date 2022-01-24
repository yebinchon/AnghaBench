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
typedef  int /*<<< orphan*/  uint32_t ;
struct kvm_vm {int page_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_GUEST_PAGE_TABLE_MIN_PADDR ; 
 int PAGES_PER_REGION ; 
 int REGION_ENTRY_LENGTH ; 
 int REGION_ENTRY_ORIGIN ; 
 int REGION_ENTRY_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vm*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct kvm_vm*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t FUNC3(struct kvm_vm *vm, int ri, uint32_t memslot)
{
	uint64_t taddr;

	taddr = FUNC2(vm,  ri < 4 ? PAGES_PER_REGION : 1,
				   KVM_GUEST_PAGE_TABLE_MIN_PADDR, memslot);
	FUNC1(FUNC0(vm, taddr), 0xff, PAGES_PER_REGION * vm->page_size);

	return (taddr & REGION_ENTRY_ORIGIN)
		| (((4 - ri) << 2) & REGION_ENTRY_TYPE)
		| ((ri < 4 ? (PAGES_PER_REGION - 1) : 0) & REGION_ENTRY_LENGTH);
}