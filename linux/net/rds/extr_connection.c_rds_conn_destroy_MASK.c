#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rds_connection {struct rds_conn_path* c_path; int /*<<< orphan*/  c_hash_node; int /*<<< orphan*/  c_faddr; int /*<<< orphan*/  c_laddr; TYPE_1__* c_trans; } ;
struct rds_conn_path {int /*<<< orphan*/  cp_retrans; } ;
struct TYPE_2__ {scalar_t__ t_mp_capable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RDS_MPATH_WORKERS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_conn_path*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rds_connection*) ; 
 int /*<<< orphan*/  rds_conn_count ; 
 int /*<<< orphan*/  rds_conn_lock ; 
 int /*<<< orphan*/  FUNC6 (struct rds_conn_path*) ; 
 int /*<<< orphan*/  rds_conn_slab ; 
 int /*<<< orphan*/  FUNC7 (char*,struct rds_connection*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 () ; 

void FUNC13(struct rds_connection *conn)
{
	unsigned long flags;
	int i;
	struct rds_conn_path *cp;
	int npaths = (conn->c_trans->t_mp_capable ? RDS_MPATH_WORKERS : 1);

	FUNC7("freeing conn %p for %pI4 -> "
		 "%pI4\n", conn, &conn->c_laddr,
		 &conn->c_faddr);

	/* Ensure conn will not be scheduled for reconnect */
	FUNC8(&rds_conn_lock);
	FUNC1(&conn->c_hash_node);
	FUNC10(&rds_conn_lock);
	FUNC12();

	/* shut the connection down */
	for (i = 0; i < npaths; i++) {
		cp = &conn->c_path[i];
		FUNC6(cp);
		FUNC0(!FUNC4(&cp->cp_retrans));
	}

	/*
	 * The congestion maps aren't freed up here.  They're
	 * freed by rds_cong_exit() after all the connections
	 * have been freed.
	 */
	FUNC5(conn);

	FUNC2(conn->c_path);
	FUNC3(rds_conn_slab, conn);

	FUNC9(&rds_conn_lock, flags);
	rds_conn_count--;
	FUNC11(&rds_conn_lock, flags);
}