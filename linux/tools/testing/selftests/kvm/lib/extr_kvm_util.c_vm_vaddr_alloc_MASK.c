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
typedef  int vm_vaddr_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct kvm_vm {size_t page_shift; size_t page_size; int /*<<< orphan*/  vpages_mapped; } ;

/* Variables and functions */
 int KVM_UTIL_MIN_PFN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vm*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vm*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct kvm_vm*,size_t,int) ; 

vm_vaddr_t FUNC5(struct kvm_vm *vm, size_t sz, vm_vaddr_t vaddr_min,
			  uint32_t data_memslot, uint32_t pgd_memslot)
{
	uint64_t pages = (sz >> vm->page_shift) + ((sz % vm->page_size) != 0);

	FUNC2(vm, pgd_memslot);

	/*
	 * Find an unused range of virtual page addresses of at least
	 * pages in length.
	 */
	vm_vaddr_t vaddr_start = FUNC4(vm, sz, vaddr_min);

	/* Map the virtual pages. */
	for (vm_vaddr_t vaddr = vaddr_start; pages > 0;
		pages--, vaddr += vm->page_size) {
		vm_paddr_t paddr;

		paddr = FUNC3(vm,
				KVM_UTIL_MIN_PFN * vm->page_size, data_memslot);

		FUNC1(vm, vaddr, paddr, pgd_memslot);

		FUNC0(vm->vpages_mapped,
			vaddr >> vm->page_shift);
	}

	return vaddr_start;
}