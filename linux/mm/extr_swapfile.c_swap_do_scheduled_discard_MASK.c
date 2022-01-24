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
struct swap_info_struct {scalar_t__ swap_map; int /*<<< orphan*/  lock; int /*<<< orphan*/  discard_clusters; struct swap_cluster_info* cluster_info; } ;
struct swap_cluster_info {int dummy; } ;

/* Variables and functions */
 unsigned int SWAPFILE_CLUSTER ; 
 int /*<<< orphan*/  FUNC0 (struct swap_info_struct*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,struct swap_cluster_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct swap_info_struct*,unsigned int,unsigned int) ; 
 struct swap_cluster_info* FUNC4 (struct swap_info_struct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct swap_cluster_info*) ; 

__attribute__((used)) static void FUNC9(struct swap_info_struct *si)
{
	struct swap_cluster_info *info, *ci;
	unsigned int idx;

	info = si->cluster_info;

	while (!FUNC2(&si->discard_clusters)) {
		idx = FUNC1(&si->discard_clusters, info);
		FUNC7(&si->lock);

		FUNC3(si, idx * SWAPFILE_CLUSTER,
				SWAPFILE_CLUSTER);

		FUNC6(&si->lock);
		ci = FUNC4(si, idx * SWAPFILE_CLUSTER);
		FUNC0(si, idx);
		FUNC5(si->swap_map + idx * SWAPFILE_CLUSTER,
				0, SWAPFILE_CLUSTER);
		FUNC8(ci);
	}
}