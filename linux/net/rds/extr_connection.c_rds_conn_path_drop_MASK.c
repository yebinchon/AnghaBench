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
struct rds_conn_path {int /*<<< orphan*/  cp_down_w; int /*<<< orphan*/  cp_conn; int /*<<< orphan*/  cp_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDS_CONN_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_wq ; 

void FUNC5(struct rds_conn_path *cp, bool destroy)
{
	FUNC0(&cp->cp_state, RDS_CONN_ERROR);

	FUNC2();
	if (!destroy && FUNC4(cp->cp_conn)) {
		FUNC3();
		return;
	}
	FUNC1(rds_wq, &cp->cp_down_w);
	FUNC3();
}