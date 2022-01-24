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
 int ENOMEM ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  rds_sysctl_rds_table ; 
 int /*<<< orphan*/  rds_sysctl_reconnect_min ; 
 int /*<<< orphan*/  rds_sysctl_reconnect_min_jiffies ; 
 int /*<<< orphan*/  rds_sysctl_reg_table ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

int FUNC2(void)
{
	rds_sysctl_reconnect_min = FUNC0(1);
	rds_sysctl_reconnect_min_jiffies = rds_sysctl_reconnect_min;

	rds_sysctl_reg_table =
		FUNC1(&init_net, "net/rds", rds_sysctl_rds_table);
	if (!rds_sysctl_reg_table)
		return -ENOMEM;
	return 0;
}