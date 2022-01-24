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
struct rds_ib_connection {struct rds_connection* conn; int /*<<< orphan*/  i_send_wc; int /*<<< orphan*/  i_send_cq; int /*<<< orphan*/  i_cq_quiesce; } ;
struct rds_connection {int /*<<< orphan*/ * c_path; int /*<<< orphan*/  c_map_queued; int /*<<< orphan*/  c_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 int /*<<< orphan*/  RDS_LL_SEND_FULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_ib_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_ib_tasklet_call ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct rds_ib_connection *ic = (struct rds_ib_connection *)data;
	struct rds_connection *conn = ic->conn;

	FUNC4(s_ib_tasklet_call);

	/* if cq has been already reaped, ignore incoming cq event */
	if (FUNC0(&ic->i_cq_quiesce))
		return;

	FUNC2(ic, ic->i_send_cq, ic->i_send_wc);
	FUNC1(ic->i_send_cq, IB_CQ_NEXT_COMP);
	FUNC2(ic, ic->i_send_cq, ic->i_send_wc);

	if (FUNC3(conn) &&
	    (!FUNC6(RDS_LL_SEND_FULL, &conn->c_flags) ||
	    FUNC6(0, &conn->c_map_queued)))
		FUNC5(&ic->conn->c_path[0]);
}