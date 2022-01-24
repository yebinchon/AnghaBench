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
struct sunrpc_net {int /*<<< orphan*/  rpc_client_lock; int /*<<< orphan*/  all_clients; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_clients; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sunrpc_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC2 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sunrpc_net_id ; 

__attribute__((used)) static void FUNC5(struct rpc_clnt *clnt)
{
	struct net *net = FUNC2(clnt);
	struct sunrpc_net *sn = FUNC1(net, sunrpc_net_id);

	FUNC3(&sn->rpc_client_lock);
	FUNC0(&clnt->cl_clients, &sn->all_clients);
	FUNC4(&sn->rpc_client_lock);
}