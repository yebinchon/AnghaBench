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
struct swap_info_struct {int flags; int /*<<< orphan*/  list; scalar_t__ pages; } ;

/* Variables and functions */
 int SWP_VALID ; 
 int SWP_WRITEOK ; 
 int /*<<< orphan*/  FUNC0 (struct swap_info_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nr_swap_pages ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swap_active_head ; 
 int /*<<< orphan*/  swap_lock ; 
 int /*<<< orphan*/  total_swap_pages ; 

__attribute__((used)) static void FUNC4(struct swap_info_struct *p)
{
	p->flags |= SWP_WRITEOK | SWP_VALID;
	FUNC2(p->pages, &nr_swap_pages);
	total_swap_pages += p->pages;

	FUNC1(&swap_lock);
	/*
	 * both lists are plists, and thus priority ordered.
	 * swap_active_head needs to be priority ordered for swapoff(),
	 * which on removal of any swap_info_struct with an auto-assigned
	 * (i.e. negative) priority increments the auto-assigned priority
	 * of any lower-priority swap_info_structs.
	 * swap_avail_head needs to be priority ordered for get_swap_page(),
	 * which allocates swap pages from the highest available priority
	 * swap_info_struct.
	 */
	FUNC3(&p->list, &swap_active_head);
	FUNC0(p);
}