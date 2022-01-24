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
struct rds_connection {int /*<<< orphan*/  c_proposed_version; } ;
struct rds_conn_path {int cp_next_tx_seq; scalar_t__ cp_flags; int /*<<< orphan*/  cp_cm_lock; int /*<<< orphan*/  cp_down_w; int /*<<< orphan*/  cp_conn_w; int /*<<< orphan*/  cp_recv_w; int /*<<< orphan*/  cp_send_w; struct rds_connection* cp_conn; scalar_t__ cp_reconnect_jiffies; scalar_t__ cp_send_gen; int /*<<< orphan*/  cp_state; int /*<<< orphan*/  cp_retrans; int /*<<< orphan*/  cp_send_queue; int /*<<< orphan*/  cp_waitq; int /*<<< orphan*/  cp_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDS_CONN_DOWN ; 
 int /*<<< orphan*/  RDS_PROTOCOL_VERSION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rds_connect_worker ; 
 int /*<<< orphan*/  rds_recv_worker ; 
 int /*<<< orphan*/  rds_send_worker ; 
 int /*<<< orphan*/  rds_shutdown_worker ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct rds_connection *conn,
				 struct rds_conn_path *cp, bool is_outgoing)
{
	FUNC6(&cp->cp_lock);
	cp->cp_next_tx_seq = 1;
	FUNC4(&cp->cp_waitq);
	FUNC1(&cp->cp_send_queue);
	FUNC1(&cp->cp_retrans);

	cp->cp_conn = conn;
	FUNC3(&cp->cp_state, RDS_CONN_DOWN);
	cp->cp_send_gen = 0;
	cp->cp_reconnect_jiffies = 0;
	cp->cp_conn->c_proposed_version = RDS_PROTOCOL_VERSION;
	FUNC0(&cp->cp_send_w, rds_send_worker);
	FUNC0(&cp->cp_recv_w, rds_recv_worker);
	FUNC0(&cp->cp_conn_w, rds_connect_worker);
	FUNC2(&cp->cp_down_w, rds_shutdown_worker);
	FUNC5(&cp->cp_cm_lock);
	cp->cp_flags = 0;
}