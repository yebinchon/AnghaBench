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
struct rds_connection {int c_npaths; struct rds_conn_path* c_path; int /*<<< orphan*/  c_faddr; int /*<<< orphan*/  c_laddr; } ;
struct rds_conn_path {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rds_conn_path*) ; 

__attribute__((used)) static void FUNC2(struct rds_connection *conn)
{
	int i;
	struct rds_conn_path *cp;

	if (conn->c_npaths > 1 &&
	    FUNC0(&conn->c_laddr, &conn->c_faddr) < 0) {
		for (i = 0; i < conn->c_npaths; i++) {
			cp = &conn->c_path[i];
			FUNC1(cp);
		}
	}
}