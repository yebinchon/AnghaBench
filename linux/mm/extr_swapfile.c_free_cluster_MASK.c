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
struct swap_info_struct {int flags; struct swap_cluster_info* cluster_info; } ;
struct swap_cluster_info {int dummy; } ;

/* Variables and functions */
 int SWP_PAGE_DISCARD ; 
 int SWP_WRITEOK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct swap_info_struct*,unsigned long) ; 
 scalar_t__ FUNC2 (struct swap_cluster_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct swap_info_struct*,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct swap_info_struct *si, unsigned long idx)
{
	struct swap_cluster_info *ci = si->cluster_info + idx;

	FUNC0(FUNC2(ci) != 0);
	/*
	 * If the swap is discardable, prepare discard the cluster
	 * instead of free it immediately. The cluster will be freed
	 * after discard.
	 */
	if ((si->flags & (SWP_WRITEOK | SWP_PAGE_DISCARD)) ==
	    (SWP_WRITEOK | SWP_PAGE_DISCARD)) {
		FUNC3(si, idx);
		return;
	}

	FUNC1(si, idx);
}