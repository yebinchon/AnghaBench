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
struct sunrpc_net {int /*<<< orphan*/  gssp_lock; struct rpc_clnt* gssp_clnt; } ;
struct rpc_clnt {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net*,struct rpc_clnt**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sunrpc_net* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  sunrpc_net_id ; 

int FUNC5(struct net *net)
{
	struct sunrpc_net *sn = FUNC3(net, sunrpc_net_id);
	struct rpc_clnt *clnt;
	int ret;

	FUNC1(&sn->gssp_lock);
	ret = FUNC0(net, &clnt);
	if (!ret) {
		if (sn->gssp_clnt)
			FUNC4(sn->gssp_clnt);
		sn->gssp_clnt = clnt;
	}
	FUNC2(&sn->gssp_lock);
	return ret;
}