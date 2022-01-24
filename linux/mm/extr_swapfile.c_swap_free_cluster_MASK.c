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
struct swap_info_struct {scalar_t__ swap_map; } ;
struct swap_cluster_info {int dummy; } ;

/* Variables and functions */
 unsigned long SWAPFILE_CLUSTER ; 
 int /*<<< orphan*/  FUNC0 (struct swap_cluster_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct swap_info_struct*,unsigned long) ; 
 struct swap_cluster_info* FUNC2 (struct swap_info_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct swap_info_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct swap_cluster_info*) ; 

__attribute__((used)) static void FUNC6(struct swap_info_struct *si, unsigned long idx)
{
	unsigned long offset = idx * SWAPFILE_CLUSTER;
	struct swap_cluster_info *ci;

	ci = FUNC2(si, offset);
	FUNC3(si->swap_map + offset, 0, SWAPFILE_CLUSTER);
	FUNC0(ci, 0, 0);
	FUNC1(si, idx);
	FUNC5(ci);
	FUNC4(si, offset, SWAPFILE_CLUSTER);
}