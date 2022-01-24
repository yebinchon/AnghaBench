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
struct rds_sock {int /*<<< orphan*/  rs_cong_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rds_cong_monitor ; 
 int /*<<< orphan*/  rds_cong_monitor_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct rds_sock *rs)
{
	unsigned long flags;

	FUNC2(&rds_cong_monitor_lock, flags);
	if (FUNC1(&rs->rs_cong_list))
		FUNC0(&rs->rs_cong_list, &rds_cong_monitor);
	FUNC3(&rds_cong_monitor_lock, flags);
}