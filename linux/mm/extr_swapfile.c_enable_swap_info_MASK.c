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
struct swap_info_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  type; } ;
struct swap_cluster_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct swap_info_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct swap_info_struct*,int,unsigned char*,struct swap_cluster_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swap_lock ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct swap_info_struct *p, int prio,
				unsigned char *swap_map,
				struct swap_cluster_info *cluster_info,
				unsigned long *frontswap_map)
{
	FUNC1(p->type, frontswap_map);
	FUNC3(&swap_lock);
	FUNC3(&p->lock);
	FUNC2(p, prio, swap_map, cluster_info);
	FUNC4(&p->lock);
	FUNC4(&swap_lock);
	/*
	 * Guarantee swap_map, cluster_info, etc. fields are valid
	 * between get/put_swap_device() if SWP_VALID bit is set
	 */
	FUNC5();
	FUNC3(&swap_lock);
	FUNC3(&p->lock);
	FUNC0(p);
	FUNC4(&p->lock);
	FUNC4(&swap_lock);
}