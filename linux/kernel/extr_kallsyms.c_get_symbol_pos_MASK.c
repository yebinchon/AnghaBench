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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CONFIG_KALLSYMS_ALL ; 
 int /*<<< orphan*/  CONFIG_KALLSYMS_BASE_RELATIVE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ _einittext ; 
 scalar_t__ _end ; 
 scalar_t__ _etext ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  kallsyms_addresses ; 
 unsigned long kallsyms_num_syms ; 
 int /*<<< orphan*/  kallsyms_offsets ; 
 unsigned long FUNC3 (unsigned long) ; 

__attribute__((used)) static unsigned long FUNC4(unsigned long addr,
				    unsigned long *symbolsize,
				    unsigned long *offset)
{
	unsigned long symbol_start = 0, symbol_end = 0;
	unsigned long i, low, high, mid;

	/* This kernel should never had been booted. */
	if (!FUNC1(CONFIG_KALLSYMS_BASE_RELATIVE))
		FUNC0(!kallsyms_addresses);
	else
		FUNC0(!kallsyms_offsets);

	/* Do a binary search on the sorted kallsyms_addresses array. */
	low = 0;
	high = kallsyms_num_syms;

	while (high - low > 1) {
		mid = low + (high - low) / 2;
		if (FUNC3(mid) <= addr)
			low = mid;
		else
			high = mid;
	}

	/*
	 * Search for the first aliased symbol. Aliased
	 * symbols are symbols with the same address.
	 */
	while (low && FUNC3(low-1) == FUNC3(low))
		--low;

	symbol_start = FUNC3(low);

	/* Search for next non-aliased symbol. */
	for (i = low + 1; i < kallsyms_num_syms; i++) {
		if (FUNC3(i) > symbol_start) {
			symbol_end = FUNC3(i);
			break;
		}
	}

	/* If we found no next symbol, we use the end of the section. */
	if (!symbol_end) {
		if (FUNC2(addr))
			symbol_end = (unsigned long)_einittext;
		else if (FUNC1(CONFIG_KALLSYMS_ALL))
			symbol_end = (unsigned long)_end;
		else
			symbol_end = (unsigned long)_etext;
	}

	if (symbolsize)
		*symbolsize = symbol_end - symbol_start;
	if (offset)
		*offset = addr - symbol_start;

	return low;
}