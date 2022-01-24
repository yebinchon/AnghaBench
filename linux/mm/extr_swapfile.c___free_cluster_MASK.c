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
struct swap_info_struct {int /*<<< orphan*/  free_clusters; struct swap_cluster_info* cluster_info; } ;
struct swap_cluster_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTER_FLAG_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct swap_cluster_info*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct swap_cluster_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct swap_info_struct *si, unsigned long idx)
{
	struct swap_cluster_info *ci = si->cluster_info;

	FUNC1(ci + idx, CLUSTER_FLAG_FREE);
	FUNC0(&si->free_clusters, ci, idx);
}