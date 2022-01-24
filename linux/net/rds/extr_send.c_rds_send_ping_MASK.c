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
struct rds_connection {int c_ping_triggered; struct rds_conn_path* c_path; } ;
struct rds_conn_path {int /*<<< orphan*/  cp_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDS_FLAG_PROBE_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rds_conn_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC4(struct rds_connection *conn, int cp_index)
{
	unsigned long flags;
	struct rds_conn_path *cp = &conn->c_path[cp_index];

	FUNC2(&cp->cp_lock, flags);
	if (conn->c_ping_triggered) {
		FUNC3(&cp->cp_lock, flags);
		return;
	}
	conn->c_ping_triggered = 1;
	FUNC3(&cp->cp_lock, flags);
	FUNC1(cp, FUNC0(RDS_FLAG_PROBE_PORT), 0, 0);
}