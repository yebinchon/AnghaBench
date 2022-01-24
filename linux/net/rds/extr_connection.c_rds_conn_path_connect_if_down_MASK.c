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
struct rds_conn_path {int /*<<< orphan*/  cp_conn_w; int /*<<< orphan*/  cp_flags; int /*<<< orphan*/  cp_conn; } ;

/* Variables and functions */
 scalar_t__ RDS_CONN_DOWN ; 
 int /*<<< orphan*/  RDS_RECONNECT_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct rds_conn_path*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_wq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct rds_conn_path *cp)
{
	FUNC1();
	if (FUNC4(cp->cp_conn)) {
		FUNC2();
		return;
	}
	if (FUNC3(cp) == RDS_CONN_DOWN &&
	    !FUNC5(RDS_RECONNECT_PENDING, &cp->cp_flags))
		FUNC0(rds_wq, &cp->cp_conn_w, 0);
	FUNC2();
}