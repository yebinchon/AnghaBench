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
struct kvm_vm {size_t page_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vm*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2(struct kvm_vm *vm, uint64_t vaddr, uint64_t paddr,
	      size_t size, uint32_t pgd_memslot)
{
	size_t page_size = vm->page_size;
	size_t npages = size / page_size;

	FUNC0(vaddr + size > vaddr, "Vaddr overflow");
	FUNC0(paddr + size > paddr, "Paddr overflow");

	while (npages--) {
		FUNC1(vm, vaddr, paddr, pgd_memslot);
		vaddr += page_size;
		paddr += page_size;
	}
}