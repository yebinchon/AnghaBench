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
struct tipc_topsrv {int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  idr_in_use; int /*<<< orphan*/  conn_idr; } ;
struct tipc_conn {int conid; struct tipc_topsrv* server; int /*<<< orphan*/  flags; int /*<<< orphan*/  rwork; int /*<<< orphan*/  swork; int /*<<< orphan*/  sub_lock; int /*<<< orphan*/  outqueue_lock; int /*<<< orphan*/  sub_list; int /*<<< orphan*/  outqueue; int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_CONNECTED ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct tipc_conn* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct tipc_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_conn*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct tipc_conn* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_conn_recv_work ; 
 int /*<<< orphan*/  tipc_conn_send_work ; 

__attribute__((used)) static struct tipc_conn *FUNC11(struct tipc_topsrv *s)
{
	struct tipc_conn *con;
	int ret;

	con = FUNC6(sizeof(*con), GFP_ATOMIC);
	if (!con)
		return FUNC0(-ENOMEM);

	FUNC5(&con->kref);
	FUNC1(&con->outqueue);
	FUNC1(&con->sub_list);
	FUNC9(&con->outqueue_lock);
	FUNC9(&con->sub_lock);
	FUNC2(&con->swork, tipc_conn_send_work);
	FUNC2(&con->rwork, tipc_conn_recv_work);

	FUNC8(&s->idr_lock);
	ret = FUNC3(&s->conn_idr, con, 0, 0, GFP_ATOMIC);
	if (ret < 0) {
		FUNC4(con);
		FUNC10(&s->idr_lock);
		return FUNC0(-ENOMEM);
	}
	con->conid = ret;
	s->idr_in_use++;
	FUNC10(&s->idr_lock);

	FUNC7(CF_CONNECTED, &con->flags);
	con->server = s;

	return con;
}