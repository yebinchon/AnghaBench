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
struct rds_ib_connection {int /*<<< orphan*/  ib_node; struct rds_connection* conn; int /*<<< orphan*/  i_recv_ring; int /*<<< orphan*/  i_send_ring; int /*<<< orphan*/  i_fastreg_wrs; int /*<<< orphan*/  i_signaled_sends; int /*<<< orphan*/  i_ack_lock; int /*<<< orphan*/  i_recv_mutex; int /*<<< orphan*/  i_recv_tasklet; int /*<<< orphan*/  i_send_tasklet; } ;
struct rds_connection {struct rds_ib_connection* c_transport_data; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RDS_IB_DEFAULT_FR_WR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_nodev_conns ; 
 int /*<<< orphan*/  ib_nodev_conns_lock ; 
 int /*<<< orphan*/  FUNC2 (struct rds_ib_connection*) ; 
 struct rds_ib_connection* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct rds_ib_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_ib_sysctl_max_recv_wr ; 
 int /*<<< orphan*/  rds_ib_sysctl_max_send_wr ; 
 int /*<<< orphan*/  rds_ib_tasklet_fn_recv ; 
 int /*<<< orphan*/  rds_ib_tasklet_fn_send ; 
 int /*<<< orphan*/  FUNC8 (char*,struct rds_connection*,struct rds_ib_connection*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC13(struct rds_connection *conn, gfp_t gfp)
{
	struct rds_ib_connection *ic;
	unsigned long flags;
	int ret;

	/* XXX too lazy? */
	ic = FUNC3(sizeof(struct rds_ib_connection), gfp);
	if (!ic)
		return -ENOMEM;

	ret = FUNC6(ic, gfp);
	if (ret) {
		FUNC2(ic);
		return ret;
	}

	FUNC0(&ic->ib_node);
	FUNC12(&ic->i_send_tasklet, rds_ib_tasklet_fn_send,
		     (unsigned long)ic);
	FUNC12(&ic->i_recv_tasklet, rds_ib_tasklet_fn_recv,
		     (unsigned long)ic);
	FUNC5(&ic->i_recv_mutex);
#ifndef KERNEL_HAS_ATOMIC64
	FUNC9(&ic->i_ack_lock);
#endif
	FUNC1(&ic->i_signaled_sends, 0);
	FUNC1(&ic->i_fastreg_wrs, RDS_IB_DEFAULT_FR_WR);

	/*
	 * rds_ib_conn_shutdown() waits for these to be emptied so they
	 * must be initialized before it can be called.
	 */
	FUNC7(&ic->i_send_ring, rds_ib_sysctl_max_send_wr);
	FUNC7(&ic->i_recv_ring, rds_ib_sysctl_max_recv_wr);

	ic->conn = conn;
	conn->c_transport_data = ic;

	FUNC10(&ib_nodev_conns_lock, flags);
	FUNC4(&ic->ib_node, &ib_nodev_conns);
	FUNC11(&ib_nodev_conns_lock, flags);


	FUNC8("conn %p conn ic %p\n", conn, conn->c_transport_data);
	return 0;
}