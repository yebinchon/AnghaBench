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
struct rds_connection {int /*<<< orphan*/  c_faddr; int /*<<< orphan*/  c_laddr; TYPE_1__* c_trans; } ;
struct rds_conn_path {unsigned long cp_reconnect_jiffies; int /*<<< orphan*/  cp_conn_w; struct rds_connection* cp_conn; int /*<<< orphan*/  cp_flags; } ;
typedef  int /*<<< orphan*/  rand ;
struct TYPE_2__ {scalar_t__ t_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDS_RECONNECT_PENDING ; 
 scalar_t__ RDS_TRANS_TCP ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,int) ; 
 unsigned long FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rds_connection*) ; 
 int /*<<< orphan*/  rds_sysctl_reconnect_max_jiffies ; 
 unsigned long rds_sysctl_reconnect_min_jiffies ; 
 int /*<<< orphan*/  rds_wq ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct rds_conn_path *cp)
{
	unsigned long rand;
	struct rds_connection *conn = cp->cp_conn;

	FUNC7("conn %p for %pI6c to %pI6c reconnect jiffies %lu\n",
		 conn, &conn->c_laddr, &conn->c_faddr,
		 cp->cp_reconnect_jiffies);

	/* let peer with smaller addr initiate reconnect, to avoid duels */
	if (conn->c_trans->t_type == RDS_TRANS_TCP &&
	    FUNC5(&conn->c_laddr, &conn->c_faddr) >= 0)
		return;

	FUNC8(RDS_RECONNECT_PENDING, &cp->cp_flags);
	if (cp->cp_reconnect_jiffies == 0) {
		cp->cp_reconnect_jiffies = rds_sysctl_reconnect_min_jiffies;
		FUNC3();
		if (!FUNC6(cp->cp_conn))
			FUNC2(rds_wq, &cp->cp_conn_w, 0);
		FUNC4();
		return;
	}

	FUNC0(&rand, sizeof(rand));
	FUNC7("%lu delay %lu ceil conn %p for %pI6c -> %pI6c\n",
		 rand % cp->cp_reconnect_jiffies, cp->cp_reconnect_jiffies,
		 conn, &conn->c_laddr, &conn->c_faddr);
	FUNC3();
	if (!FUNC6(cp->cp_conn))
		FUNC2(rds_wq, &cp->cp_conn_w,
				   rand % cp->cp_reconnect_jiffies);
	FUNC4();

	cp->cp_reconnect_jiffies = FUNC1(cp->cp_reconnect_jiffies * 2,
					rds_sysctl_reconnect_max_jiffies);
}