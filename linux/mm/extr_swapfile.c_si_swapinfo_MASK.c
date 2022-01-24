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
struct sysinfo {scalar_t__ totalswap; scalar_t__ freeswap; } ;
struct swap_info_struct {int flags; scalar_t__ inuse_pages; } ;

/* Variables and functions */
 int SWP_USED ; 
 int SWP_WRITEOK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nr_swap_pages ; 
 unsigned int nr_swapfiles ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct swap_info_struct** swap_info ; 
 int /*<<< orphan*/  swap_lock ; 
 scalar_t__ total_swap_pages ; 

void FUNC3(struct sysinfo *val)
{
	unsigned int type;
	unsigned long nr_to_be_unused = 0;

	FUNC1(&swap_lock);
	for (type = 0; type < nr_swapfiles; type++) {
		struct swap_info_struct *si = swap_info[type];

		if ((si->flags & SWP_USED) && !(si->flags & SWP_WRITEOK))
			nr_to_be_unused += si->inuse_pages;
	}
	val->freeswap = FUNC0(&nr_swap_pages) + nr_to_be_unused;
	val->totalswap = total_swap_pages + nr_to_be_unused;
	FUNC2(&swap_lock);
}