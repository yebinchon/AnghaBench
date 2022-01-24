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
typedef  scalar_t__ u32 ;
struct tipc_topsrv {int /*<<< orphan*/  send_wq; } ;
struct tipc_event {int dummy; } ;
struct tipc_conn {int /*<<< orphan*/  swork; int /*<<< orphan*/  outqueue_lock; int /*<<< orphan*/  outqueue; } ;
struct outqueue_entry {int inactive; int /*<<< orphan*/  list; int /*<<< orphan*/  evt; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ TIPC_SUBSCR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct tipc_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_conn*) ; 
 struct outqueue_entry* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct tipc_event*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct tipc_conn* FUNC8 (struct tipc_topsrv*,int) ; 
 struct tipc_topsrv* FUNC9 (struct net*) ; 

void FUNC10(struct net *net, int conid,
			   u32 event, struct tipc_event *evt)
{
	struct tipc_topsrv *srv = FUNC9(net);
	struct outqueue_entry *e;
	struct tipc_conn *con;

	con = FUNC8(srv, conid);
	if (!con)
		return;

	if (!FUNC1(con))
		goto err;

	e = FUNC2(sizeof(*e), GFP_ATOMIC);
	if (!e)
		goto err;
	e->inactive = (event == TIPC_SUBSCR_TIMEOUT);
	FUNC4(&e->evt, evt, sizeof(*evt));
	FUNC6(&con->outqueue_lock);
	FUNC3(&e->list, &con->outqueue);
	FUNC7(&con->outqueue_lock);

	if (FUNC5(srv->send_wq, &con->swork))
		return;
err:
	FUNC0(con);
}