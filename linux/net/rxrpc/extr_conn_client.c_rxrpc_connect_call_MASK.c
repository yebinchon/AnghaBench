#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_rxrpc {int dummy; } ;
struct rxrpc_sock {int dummy; } ;
struct rxrpc_net {int /*<<< orphan*/  client_conn_reaper; } ;
struct rxrpc_conn_parameters {TYPE_1__* local; } ;
struct rxrpc_call {TYPE_4__* conn; int /*<<< orphan*/  error_link; int /*<<< orphan*/  user_call_ID; int /*<<< orphan*/  debug_id; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_9__ {TYPE_2__* peer; } ;
struct TYPE_10__ {TYPE_3__ params; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  error_targets; } ;
struct TYPE_7__ {struct rxrpc_net* rxnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct rxrpc_net*,TYPE_4__*) ; 
 int /*<<< orphan*/  rxrpc_client_chan_wait_failed ; 
 int /*<<< orphan*/  FUNC5 (struct rxrpc_net*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rxrpc_call*) ; 
 int FUNC8 (struct rxrpc_sock*,struct rxrpc_call*,struct rxrpc_conn_parameters*,struct sockaddr_rxrpc*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct rxrpc_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 

int FUNC13(struct rxrpc_sock *rx,
		       struct rxrpc_call *call,
		       struct rxrpc_conn_parameters *cp,
		       struct sockaddr_rxrpc *srx,
		       gfp_t gfp)
{
	struct rxrpc_net *rxnet = cp->local->rxnet;
	int ret;

	FUNC0("{%d,%lx},", call->debug_id, call->user_call_ID);

	FUNC6(&rxnet->client_conn_reaper);
	FUNC5(rxnet);

	ret = FUNC8(rx, call, cp, srx, gfp);
	if (ret < 0)
		goto out;

	FUNC4(rxnet, call->conn);
	FUNC3(call->conn);

	ret = FUNC9(call, gfp);
	if (ret < 0) {
		FUNC12(call->conn, ret, rxrpc_client_chan_wait_failed);
		FUNC7(call);
		goto out;
	}

	FUNC10(&call->conn->params.peer->lock);
	FUNC2(&call->error_link,
			   &call->conn->params.peer->error_targets);
	FUNC11(&call->conn->params.peer->lock);

out:
	FUNC1(" = %d", ret);
	return ret;
}