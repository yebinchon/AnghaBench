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
struct rds_ib_device {int dummy; } ;
struct rds_ib_connection {scalar_t__ i_ack_recv; int /*<<< orphan*/  i_recv_wc; int /*<<< orphan*/  i_recv_cq; int /*<<< orphan*/  i_cq_quiesce; struct rds_ib_device* rds_ibdev; struct rds_connection* conn; } ;
struct rds_ib_ack_state {scalar_t__ ack_recv; scalar_t__ ack_recv_valid; int /*<<< orphan*/  ack_required; int /*<<< orphan*/  ack_next; scalar_t__ ack_next_valid; } ;
struct rds_connection {int dummy; } ;
typedef  int /*<<< orphan*/  state ;

/* Variables and functions */
 int /*<<< orphan*/  IB_CQ_SOLICITED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_ib_ack_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_ib_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rds_ib_ack_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_connection*) ; 
 scalar_t__ FUNC5 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC6 (struct rds_ib_connection*) ; 
 int /*<<< orphan*/  FUNC7 (struct rds_ib_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rds_connection*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_ib_tasklet_call ; 

__attribute__((used)) static void FUNC10(unsigned long data)
{
	struct rds_ib_connection *ic = (struct rds_ib_connection *)data;
	struct rds_connection *conn = ic->conn;
	struct rds_ib_device *rds_ibdev = ic->rds_ibdev;
	struct rds_ib_ack_state state;

	if (!rds_ibdev)
		FUNC4(conn);

	FUNC8(s_ib_tasklet_call);

	/* if cq has been already reaped, ignore incoming cq event */
	if (FUNC0(&ic->i_cq_quiesce))
		return;

	FUNC2(&state, 0, sizeof(state));
	FUNC3(ic, ic->i_recv_cq, ic->i_recv_wc, &state);
	FUNC1(ic->i_recv_cq, IB_CQ_SOLICITED);
	FUNC3(ic, ic->i_recv_cq, ic->i_recv_wc, &state);

	if (state.ack_next_valid)
		FUNC7(ic, state.ack_next, state.ack_required);
	if (state.ack_recv_valid && state.ack_recv > ic->i_ack_recv) {
		FUNC9(conn, state.ack_recv, NULL);
		ic->i_ack_recv = state.ack_recv;
	}

	if (FUNC5(conn))
		FUNC6(ic);
}