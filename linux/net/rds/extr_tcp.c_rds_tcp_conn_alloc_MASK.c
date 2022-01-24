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
struct rds_tcp_connection {int t_tinc_hdr_rem; int t_tcp_node_detached; int /*<<< orphan*/  t_tcp_node; TYPE_1__* t_cpath; scalar_t__ t_tinc_data_rem; int /*<<< orphan*/ * t_tinc; int /*<<< orphan*/ * t_sock; int /*<<< orphan*/  t_conn_path_lock; } ;
struct rds_header {int dummy; } ;
struct rds_connection {TYPE_1__* c_path; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {struct rds_tcp_connection* cp_transport_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int RDS_MPATH_WORKERS ; 
 struct rds_tcp_connection* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_tcp_connection*) ; 
 int /*<<< orphan*/  rds_tcp_conn_list ; 
 int /*<<< orphan*/  rds_tcp_conn_lock ; 
 int /*<<< orphan*/  rds_tcp_conn_slab ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct rds_tcp_connection*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct rds_connection *conn, gfp_t gfp)
{
	struct rds_tcp_connection *tc;
	int i, j;
	int ret = 0;

	for (i = 0; i < RDS_MPATH_WORKERS; i++) {
		tc = FUNC0(rds_tcp_conn_slab, gfp);
		if (!tc) {
			ret = -ENOMEM;
			goto fail;
		}
		FUNC2(&tc->t_conn_path_lock);
		tc->t_sock = NULL;
		tc->t_tinc = NULL;
		tc->t_tinc_hdr_rem = sizeof(struct rds_header);
		tc->t_tinc_data_rem = 0;

		conn->c_path[i].cp_transport_data = tc;
		tc->t_cpath = &conn->c_path[i];
		tc->t_tcp_node_detached = true;

		FUNC4("rds_conn_path [%d] tc %p\n", i,
			 conn->c_path[i].cp_transport_data);
	}
	FUNC5(&rds_tcp_conn_lock);
	for (i = 0; i < RDS_MPATH_WORKERS; i++) {
		tc = conn->c_path[i].cp_transport_data;
		tc->t_tcp_node_detached = false;
		FUNC1(&tc->t_tcp_node, &rds_tcp_conn_list);
	}
	FUNC6(&rds_tcp_conn_lock);
fail:
	if (ret) {
		for (j = 0; j < i; j++)
			FUNC3(conn->c_path[j].cp_transport_data);
	}
	return ret;
}