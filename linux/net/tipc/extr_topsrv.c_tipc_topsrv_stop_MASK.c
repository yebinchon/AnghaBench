#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tipc_topsrv {int /*<<< orphan*/  conn_idr; int /*<<< orphan*/  idr_lock; struct socket* listener; scalar_t__ idr_in_use; } ;
struct tipc_conn {int dummy; } ;
struct socket {TYPE_3__* sk; TYPE_1__* ops; } ;
struct net {int dummy; } ;
struct TYPE_6__ {TYPE_2__* sk_prot_creator; } ;
struct TYPE_5__ {int /*<<< orphan*/  owner; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tipc_conn* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_topsrv*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_conn*) ; 
 struct tipc_topsrv* FUNC8 (struct net*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_topsrv*) ; 

__attribute__((used)) static void FUNC10(struct net *net)
{
	struct tipc_topsrv *srv = FUNC8(net);
	struct socket *lsock = srv->listener;
	struct tipc_conn *con;
	int id;

	FUNC5(&srv->idr_lock);
	for (id = 0; srv->idr_in_use; id++) {
		con = FUNC2(&srv->conn_idr, id);
		if (con) {
			FUNC6(&srv->idr_lock);
			FUNC7(con);
			FUNC5(&srv->idr_lock);
		}
	}
	FUNC0(lsock->ops->owner);
	FUNC0(lsock->sk->sk_prot_creator->owner);
	srv->listener = NULL;
	FUNC6(&srv->idr_lock);
	FUNC4(lsock);
	FUNC9(srv);
	FUNC1(&srv->conn_idr);
	FUNC3(srv);
}