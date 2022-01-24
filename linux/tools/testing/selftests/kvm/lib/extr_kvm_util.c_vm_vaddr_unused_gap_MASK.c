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
typedef  int uint64_t ;
struct kvm_vm {size_t page_size; size_t page_shift; int /*<<< orphan*/  vpages_mapped; int /*<<< orphan*/  vpages_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static vm_vaddr_t FUNC5(struct kvm_vm *vm, size_t sz,
				      vm_vaddr_t vaddr_min)
{
	uint64_t pages = (sz + vm->page_size - 1) >> vm->page_shift;

	/* Determine lowest permitted virtual page index. */
	uint64_t pgidx_start = (vaddr_min + vm->page_size - 1) >> vm->page_shift;
	if ((pgidx_start * vm->page_size) < vaddr_min)
		goto no_va_found;

	/* Loop over section with enough valid virtual page indexes. */
	if (!FUNC2(vm->vpages_valid,
		pgidx_start, pages))
		pgidx_start = FUNC4(vm->vpages_valid,
			pgidx_start, pages);
	do {
		/*
		 * Are there enough unused virtual pages available at
		 * the currently proposed starting virtual page index.
		 * If not, adjust proposed starting index to next
		 * possible.
		 */
		if (FUNC1(vm->vpages_mapped,
			pgidx_start, pages))
			goto va_found;
		pgidx_start = FUNC3(vm->vpages_mapped,
			pgidx_start, pages);
		if (pgidx_start == 0)
			goto no_va_found;

		/*
		 * If needed, adjust proposed starting virtual address,
		 * to next range of valid virtual addresses.
		 */
		if (!FUNC2(vm->vpages_valid,
			pgidx_start, pages)) {
			pgidx_start = FUNC4(
				vm->vpages_valid, pgidx_start, pages);
			if (pgidx_start == 0)
				goto no_va_found;
		}
	} while (pgidx_start != 0);

no_va_found:
	FUNC0(false, "No vaddr of specified pages available, "
		"pages: 0x%lx", pages);

	/* NOT REACHED */
	return -1;

va_found:
	FUNC0(FUNC2(vm->vpages_valid,
		pgidx_start, pages),
		"Unexpected, invalid virtual page index range,\n"
		"  pgidx_start: 0x%lx\n"
		"  pages: 0x%lx",
		pgidx_start, pages);
	FUNC0(FUNC1(vm->vpages_mapped,
		pgidx_start, pages),
		"Unexpected, pages already mapped,\n"
		"  pgidx_start: 0x%lx\n"
		"  pages: 0x%lx",
		pgidx_start, pages);

	return pgidx_start * vm->page_size;
}