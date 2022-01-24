#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_DEBUG_DYNAMIC_ENTRIES ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HASH_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int dma_debug_initialized ; 
 TYPE_1__* dma_entry_hash ; 
 int global_disable ; 
 scalar_t__ min_free_entries ; 
 scalar_t__ nr_prealloc_entries ; 
 int /*<<< orphan*/  nr_total_entries ; 
 scalar_t__ num_free_entries ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(void)
{
	int i, nr_pages;

	/* Do not use dma_debug_initialized here, since we really want to be
	 * called to set dma_debug_initialized
	 */
	if (global_disable)
		return 0;

	for (i = 0; i < HASH_SIZE; ++i) {
		FUNC1(&dma_entry_hash[i].list);
		FUNC7(&dma_entry_hash[i].lock);
	}

	FUNC3();

	nr_pages = FUNC0(nr_prealloc_entries, DMA_DEBUG_DYNAMIC_ENTRIES);
	for (i = 0; i < nr_pages; ++i)
		FUNC2(GFP_KERNEL);
	if (num_free_entries >= nr_prealloc_entries) {
		FUNC5("preallocated %d debug entries\n", nr_total_entries);
	} else if (num_free_entries > 0) {
		FUNC6("%d debug entries requested but only %d allocated\n",
			nr_prealloc_entries, nr_total_entries);
	} else {
		FUNC4("debugging out of memory error - disabled\n");
		global_disable = true;

		return 0;
	}
	min_free_entries = num_free_entries;

	dma_debug_initialized = true;

	FUNC5("debugging enabled by kernel config\n");
	return 0;
}