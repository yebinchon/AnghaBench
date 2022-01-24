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
struct dma_debug_entry {int /*<<< orphan*/  stack_entries; int /*<<< orphan*/  stack_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct dma_debug_entry* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_entries_lock ; 
 int global_disable ; 
 scalar_t__ num_free_entries ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct dma_debug_entry *FUNC8(void)
{
	struct dma_debug_entry *entry;
	unsigned long flags;

	FUNC5(&free_entries_lock, flags);
	if (num_free_entries == 0) {
		if (FUNC3(GFP_ATOMIC)) {
			global_disable = true;
			FUNC6(&free_entries_lock, flags);
			FUNC4("debugging out of memory - disabling\n");
			return NULL;
		}
		FUNC2();
	}

	entry = FUNC1();

	FUNC6(&free_entries_lock, flags);

#ifdef CONFIG_STACKTRACE
	entry->stack_len = stack_trace_save(entry->stack_entries,
					    ARRAY_SIZE(entry->stack_entries),
					    1);
#endif
	return entry;
}