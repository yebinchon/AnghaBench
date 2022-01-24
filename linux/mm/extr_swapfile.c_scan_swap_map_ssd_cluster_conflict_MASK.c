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
struct swap_info_struct {int /*<<< orphan*/  percpu_cluster; int /*<<< orphan*/ * cluster_info; int /*<<< orphan*/  free_clusters; } ;
struct percpu_cluster {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 unsigned long SWAPFILE_CLUSTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct percpu_cluster* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(struct swap_info_struct *si,
	unsigned long offset)
{
	struct percpu_cluster *percpu_cluster;
	bool conflict;

	offset /= SWAPFILE_CLUSTER;
	conflict = !FUNC1(&si->free_clusters) &&
		offset != FUNC2(&si->free_clusters) &&
		FUNC0(&si->cluster_info[offset]);

	if (!conflict)
		return false;

	percpu_cluster = FUNC4(si->percpu_cluster);
	FUNC3(&percpu_cluster->index);
	return true;
}