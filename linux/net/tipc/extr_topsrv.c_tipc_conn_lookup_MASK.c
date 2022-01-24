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
struct tipc_topsrv {int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  conn_idr; } ;
struct tipc_conn {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tipc_conn*) ; 
 struct tipc_conn* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct tipc_conn *FUNC5(struct tipc_topsrv *s, int conid)
{
	struct tipc_conn *con;

	FUNC3(&s->idr_lock);
	con = FUNC1(&s->conn_idr, conid);
	if (!FUNC0(con) || !FUNC2(&con->kref))
		con = NULL;
	FUNC4(&s->idr_lock);
	return con;
}