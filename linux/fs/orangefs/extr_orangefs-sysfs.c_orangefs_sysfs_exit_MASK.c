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

/* Variables and functions */
 int /*<<< orphan*/  GOSSIP_SYSFS_DEBUG ; 
 int /*<<< orphan*/  acache_orangefs_obj ; 
 int /*<<< orphan*/  capcache_orangefs_obj ; 
 int /*<<< orphan*/  ccache_orangefs_obj ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ncache_orangefs_obj ; 
 int /*<<< orphan*/  orangefs_obj ; 
 int /*<<< orphan*/  pc_orangefs_obj ; 
 int /*<<< orphan*/  stats_orangefs_obj ; 

void FUNC2(void)
{
	FUNC0(GOSSIP_SYSFS_DEBUG, "orangefs_sysfs_exit: start\n");
	FUNC1(acache_orangefs_obj);
	FUNC1(capcache_orangefs_obj);
	FUNC1(ccache_orangefs_obj);
	FUNC1(ncache_orangefs_obj);
	FUNC1(pc_orangefs_obj);
	FUNC1(stats_orangefs_obj);
	FUNC1(orangefs_obj);
}