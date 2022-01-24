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
typedef  size_t vm_paddr_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct userspace_mem_region {int /*<<< orphan*/  unused_phy_pages; } ;
struct kvm_vm {size_t page_size; size_t page_shift; } ;
typedef  size_t sparsebit_idx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct userspace_mem_region* FUNC4 (struct kvm_vm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct kvm_vm*,int) ; 

vm_paddr_t FUNC9(struct kvm_vm *vm, size_t num,
			      vm_paddr_t paddr_min, uint32_t memslot)
{
	struct userspace_mem_region *region;
	sparsebit_idx_t pg, base;

	FUNC0(num > 0, "Must allocate at least one page");

	FUNC0((paddr_min % vm->page_size) == 0, "Min physical address "
		"not divisible by page size.\n"
		"  paddr_min: 0x%lx page_size: 0x%x",
		paddr_min, vm->page_size);

	region = FUNC4(vm, memslot);
	base = pg = paddr_min >> vm->page_shift;

	do {
		for (; pg < base + num; ++pg) {
			if (!FUNC6(region->unused_phy_pages, pg)) {
				base = pg = FUNC7(region->unused_phy_pages, pg);
				break;
			}
		}
	} while (pg && pg != base + num);

	if (pg == 0) {
		FUNC2(stderr, "No guest physical page available, "
			"paddr_min: 0x%lx page_size: 0x%zx memslot: %u\n",
			paddr_min, vm->page_size, memslot);
		FUNC3("---- vm dump ----\n", stderr);
		FUNC8(stderr, vm, 2);
		FUNC1();
	}

	for (pg = base; pg < base + num; ++pg)
		FUNC5(region->unused_phy_pages, pg);

	return base * vm->page_size;
}