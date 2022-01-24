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
struct swap_info_struct {unsigned char* swap_map; int /*<<< orphan*/  type; int /*<<< orphan*/  free_clusters; } ;
struct swap_cluster_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTER_FLAG_HUGE ; 
 int /*<<< orphan*/  CONFIG_THP_SWAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long SWAPFILE_CLUSTER ; 
 unsigned char SWAP_HAS_CACHE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct swap_info_struct*,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct swap_cluster_info*,unsigned long,int /*<<< orphan*/ ) ; 
 struct swap_cluster_info* FUNC6 (struct swap_info_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct swap_info_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct swap_cluster_info*) ; 

__attribute__((used)) static int FUNC10(struct swap_info_struct *si, swp_entry_t *slot)
{
	unsigned long idx;
	struct swap_cluster_info *ci;
	unsigned long offset, i;
	unsigned char *map;

	/*
	 * Should not even be attempting cluster allocations when huge
	 * page swap is disabled.  Warn and fail the allocation.
	 */
	if (!FUNC0(CONFIG_THP_SWAP)) {
		FUNC1(1);
		return 0;
	}

	if (FUNC3(&si->free_clusters))
		return 0;

	idx = FUNC4(&si->free_clusters);
	offset = idx * SWAPFILE_CLUSTER;
	ci = FUNC6(si, offset);
	FUNC2(si, idx);
	FUNC5(ci, SWAPFILE_CLUSTER, CLUSTER_FLAG_HUGE);

	map = si->swap_map + offset;
	for (i = 0; i < SWAPFILE_CLUSTER; i++)
		map[i] = SWAP_HAS_CACHE;
	FUNC9(ci);
	FUNC7(si, offset, SWAPFILE_CLUSTER);
	*slot = FUNC8(si->type, offset);

	return 1;
}