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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct swap_info_struct {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  entries ;

/* Variables and functions */
 int nr_swapfiles ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct swap_info_struct*,int /*<<< orphan*/ ) ; 
 struct swap_info_struct* FUNC3 (int /*<<< orphan*/ ,struct swap_info_struct*) ; 
 int /*<<< orphan*/  swp_entry_cmp ; 

void FUNC4(swp_entry_t *entries, int n)
{
	struct swap_info_struct *p, *prev;
	int i;

	if (n <= 0)
		return;

	prev = NULL;
	p = NULL;

	/*
	 * Sort swap entries by swap device, so each lock is only taken once.
	 * nr_swapfiles isn't absolutely correct, but the overhead of sort() is
	 * so low that it isn't necessary to optimize further.
	 */
	if (nr_swapfiles > 1)
		FUNC0(entries, n, sizeof(entries[0]), swp_entry_cmp, NULL);
	for (i = 0; i < n; ++i) {
		p = FUNC3(entries[i], prev);
		if (p)
			FUNC2(p, entries[i]);
		prev = p;
	}
	if (p)
		FUNC1(&p->lock);
}