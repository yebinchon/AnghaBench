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
struct vm_struct {int flags; int nr_pages; int /*<<< orphan*/ * pages; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 unsigned long ULONG_MAX ; 
 int VM_FLUSH_RESET_PERMS ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long,int) ; 
 unsigned long FUNC1 (scalar_t__,unsigned long) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_direct_map_default_noflush ; 
 int /*<<< orphan*/  set_direct_map_invalid_noflush ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct vm_struct *area, int deallocate_pages)
{
	unsigned long start = ULONG_MAX, end = 0;
	int flush_reset = area->flags & VM_FLUSH_RESET_PERMS;
	int flush_dmap = 0;
	int i;

	FUNC4(area->addr);

	/* If this is not VM_FLUSH_RESET_PERMS memory, no need for the below. */
	if (!flush_reset)
		return;

	/*
	 * If not deallocating pages, just do the flush of the VM area and
	 * return.
	 */
	if (!deallocate_pages) {
		FUNC6();
		return;
	}

	/*
	 * If execution gets here, flush the vm mapping and reset the direct
	 * map. Find the start and end range of the direct mappings to make sure
	 * the vm_unmap_aliases() flush includes the direct map.
	 */
	for (i = 0; i < area->nr_pages; i++) {
		unsigned long addr = (unsigned long)FUNC3(area->pages[i]);
		if (addr) {
			start = FUNC2(addr, start);
			end = FUNC1(addr + PAGE_SIZE, end);
			flush_dmap = 1;
		}
	}

	/*
	 * Set direct map to something invalid so that it won't be cached if
	 * there are any accesses after the TLB flush, then flush the TLB and
	 * reset the direct map permissions to the default.
	 */
	FUNC5(area, set_direct_map_invalid_noflush);
	FUNC0(start, end, flush_dmap);
	FUNC5(area, set_direct_map_default_noflush);
}