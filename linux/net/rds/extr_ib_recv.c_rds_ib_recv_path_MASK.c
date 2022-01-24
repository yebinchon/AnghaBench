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
struct rds_ib_connection {int dummy; } ;
struct rds_connection {struct rds_ib_connection* c_transport_data; } ;
struct rds_conn_path {struct rds_connection* cp_conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct rds_ib_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct rds_connection*) ; 
 int /*<<< orphan*/  s_ib_rx_refill_from_thread ; 

int FUNC5(struct rds_conn_path *cp)
{
	struct rds_connection *conn = cp->cp_conn;
	struct rds_ib_connection *ic = conn->c_transport_data;

	FUNC4("conn %p\n", conn);
	if (FUNC0(conn)) {
		FUNC1(ic);
		FUNC2(conn, 0, GFP_KERNEL);
		FUNC3(s_ib_rx_refill_from_thread);
	}

	return 0;
}