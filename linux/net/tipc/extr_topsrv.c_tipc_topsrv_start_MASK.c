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
struct tipc_topsrv {scalar_t__ idr_in_use; int /*<<< orphan*/  conn_idr; int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  name; int /*<<< orphan*/  awork; struct net* net; } ;
struct tipc_net {int /*<<< orphan*/  subscription_count; struct tipc_topsrv* topsrv; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tipc_topsrv* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 struct tipc_net* FUNC6 (struct net*) ; 
 int /*<<< orphan*/  tipc_topsrv_accept ; 
 int FUNC7 (struct tipc_topsrv*) ; 
 int FUNC8 (struct tipc_topsrv*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_topsrv*) ; 

__attribute__((used)) static int FUNC10(struct net *net)
{
	struct tipc_net *tn = FUNC6(net);
	const char name[] = "topology_server";
	struct tipc_topsrv *srv;
	int ret;

	srv = FUNC3(sizeof(*srv), GFP_ATOMIC);
	if (!srv)
		return -ENOMEM;

	srv->net = net;
	FUNC0(&srv->awork, tipc_topsrv_accept);

	FUNC5(srv->name, name, sizeof(srv->name));
	tn->topsrv = srv;
	FUNC1(&tn->subscription_count, 0);

	FUNC4(&srv->idr_lock);
	FUNC2(&srv->conn_idr);
	srv->idr_in_use = 0;

	ret = FUNC8(srv);
	if (ret < 0)
		return ret;

	ret = FUNC7(srv);
	if (ret < 0)
		FUNC9(srv);

	return ret;
}