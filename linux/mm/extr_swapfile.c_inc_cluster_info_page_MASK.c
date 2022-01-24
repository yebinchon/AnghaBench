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
struct swap_info_struct {int dummy; } ;
struct swap_cluster_info {int dummy; } ;

/* Variables and functions */
 unsigned long SWAPFILE_CLUSTER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct swap_info_struct*,unsigned long) ; 
 int FUNC2 (struct swap_cluster_info*) ; 
 scalar_t__ FUNC3 (struct swap_cluster_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct swap_cluster_info*,int) ; 

__attribute__((used)) static void FUNC5(struct swap_info_struct *p,
	struct swap_cluster_info *cluster_info, unsigned long page_nr)
{
	unsigned long idx = page_nr / SWAPFILE_CLUSTER;

	if (!cluster_info)
		return;
	if (FUNC3(&cluster_info[idx]))
		FUNC1(p, idx);

	FUNC0(FUNC2(&cluster_info[idx]) >= SWAPFILE_CLUSTER);
	FUNC4(&cluster_info[idx],
		FUNC2(&cluster_info[idx]) + 1);
}