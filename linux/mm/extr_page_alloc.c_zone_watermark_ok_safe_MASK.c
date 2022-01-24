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
struct zone {long percpu_drift_mark; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_FREE_PAGES ; 
 int FUNC0 (struct zone*,unsigned int,unsigned long,int,int /*<<< orphan*/ ,long) ; 
 long FUNC1 (struct zone*,int /*<<< orphan*/ ) ; 
 long FUNC2 (struct zone*,int /*<<< orphan*/ ) ; 

bool FUNC3(struct zone *z, unsigned int order,
			unsigned long mark, int classzone_idx)
{
	long free_pages = FUNC1(z, NR_FREE_PAGES);

	if (z->percpu_drift_mark && free_pages < z->percpu_drift_mark)
		free_pages = FUNC2(z, NR_FREE_PAGES);

	return FUNC0(z, order, mark, classzone_idx, 0,
								free_pages);
}