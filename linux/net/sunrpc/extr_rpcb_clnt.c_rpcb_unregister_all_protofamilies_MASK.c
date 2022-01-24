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
struct sunrpc_net {int /*<<< orphan*/  rpcb_local_clnt4; } ;
struct rpcbind_args {char* r_addr; int /*<<< orphan*/  r_netid; int /*<<< orphan*/  r_vers; int /*<<< orphan*/  r_prog; } ;
struct rpc_message {int /*<<< orphan*/ * rpc_proc; struct rpcbind_args* rpc_argp; } ;

/* Variables and functions */
 size_t RPCBPROC_UNSET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rpcb_procedures4 ; 
 int FUNC1 (struct sunrpc_net*,int /*<<< orphan*/ ,struct rpc_message*,int) ; 

__attribute__((used)) static int FUNC2(struct sunrpc_net *sn,
					     struct rpc_message *msg)
{
	struct rpcbind_args *map = msg->rpc_argp;

	FUNC0("RPC:       unregistering [%u, %u, '%s'] with "
		"local rpcbind\n",
			map->r_prog, map->r_vers, map->r_netid);

	map->r_addr = "";
	msg->rpc_proc = &rpcb_procedures4[RPCBPROC_UNSET];

	return FUNC1(sn, sn->rpcb_local_clnt4, msg, false);
}