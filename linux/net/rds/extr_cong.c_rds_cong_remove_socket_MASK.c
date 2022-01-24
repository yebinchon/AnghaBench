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
struct rds_sock {int /*<<< orphan*/  rs_bound_port; int /*<<< orphan*/  rs_bound_addr; int /*<<< orphan*/  rs_cong_list; } ;
struct rds_cong_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rds_cong_map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_cong_lock ; 
 int /*<<< orphan*/  rds_cong_monitor_lock ; 
 int /*<<< orphan*/  FUNC2 (struct rds_cong_map*) ; 
 scalar_t__ FUNC3 (struct rds_cong_map*,int /*<<< orphan*/ ) ; 
 struct rds_cong_map* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC9(struct rds_sock *rs)
{
	unsigned long flags;
	struct rds_cong_map *map;

	FUNC7(&rds_cong_monitor_lock, flags);
	FUNC0(&rs->rs_cong_list);
	FUNC8(&rds_cong_monitor_lock, flags);

	/* update congestion map for now-closed port */
	FUNC5(&rds_cong_lock, flags);
	map = FUNC4(&rs->rs_bound_addr, NULL);
	FUNC6(&rds_cong_lock, flags);

	if (map && FUNC3(map, rs->rs_bound_port)) {
		FUNC1(map, rs->rs_bound_port);
		FUNC2(map);
	}
}