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
struct sockaddr_rxrpc {int /*<<< orphan*/  srx_service; } ;
struct rxrpc_sock {int dummy; } ;
struct rxrpc_call {int tx_phase; void* cong_tstamp; void* acks_latest_ts; int /*<<< orphan*/  service_id; int /*<<< orphan*/  state; } ;
typedef  void* ktime_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct rxrpc_call* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RXRPC_CALL_CLIENT_AWAIT_CONN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct rxrpc_call*) ; 
 void* FUNC3 () ; 
 struct rxrpc_call* FUNC4 (struct rxrpc_sock*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static struct rxrpc_call *FUNC5(struct rxrpc_sock *rx,
						  struct sockaddr_rxrpc *srx,
						  gfp_t gfp,
						  unsigned int debug_id)
{
	struct rxrpc_call *call;
	ktime_t now;

	FUNC1("");

	call = FUNC4(rx, gfp, debug_id);
	if (!call)
		return FUNC0(-ENOMEM);
	call->state = RXRPC_CALL_CLIENT_AWAIT_CONN;
	call->service_id = srx->srx_service;
	call->tx_phase = true;
	now = FUNC3();
	call->acks_latest_ts = now;
	call->cong_tstamp = now;

	FUNC2(" = %p", call);
	return call;
}