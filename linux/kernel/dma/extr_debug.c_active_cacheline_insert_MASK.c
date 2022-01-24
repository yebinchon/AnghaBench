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
struct dma_debug_entry {scalar_t__ direction; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 scalar_t__ DMA_TO_DEVICE ; 
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_active_cacheline ; 
 int /*<<< orphan*/  radix_lock ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dma_debug_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_debug_entry*) ; 

__attribute__((used)) static int FUNC5(struct dma_debug_entry *entry)
{
	phys_addr_t cln = FUNC4(entry);
	unsigned long flags;
	int rc;

	/* If the device is not writing memory then we don't have any
	 * concerns about the cpu consuming stale data.  This mitigates
	 * legitimate usages of overlapping mappings.
	 */
	if (entry->direction == DMA_TO_DEVICE)
		return 0;

	FUNC2(&radix_lock, flags);
	rc = FUNC1(&dma_active_cacheline, cln, entry);
	if (rc == -EEXIST)
		FUNC0(cln);
	FUNC3(&radix_lock, flags);

	return rc;
}