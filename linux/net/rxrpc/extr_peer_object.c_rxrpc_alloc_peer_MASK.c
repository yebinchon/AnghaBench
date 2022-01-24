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
struct rxrpc_peer {int cong_cwnd; int /*<<< orphan*/  debug_id; int /*<<< orphan*/  rtt_input_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  service_conn_lock; int /*<<< orphan*/  service_conns; int /*<<< orphan*/  error_targets; int /*<<< orphan*/  local; int /*<<< orphan*/  usage; } ;
struct rxrpc_local {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int RXRPC_TX_SMSS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct rxrpc_peer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct rxrpc_peer* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rxrpc_debug_id ; 
 int /*<<< orphan*/  FUNC6 (struct rxrpc_local*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct rxrpc_peer *FUNC9(struct rxrpc_local *local, gfp_t gfp)
{
	struct rxrpc_peer *peer;

	FUNC1("");

	peer = FUNC5(sizeof(struct rxrpc_peer), gfp);
	if (peer) {
		FUNC4(&peer->usage, 1);
		peer->local = FUNC6(local);
		FUNC0(&peer->error_targets);
		peer->service_conns = RB_ROOT;
		FUNC7(&peer->service_conn_lock);
		FUNC8(&peer->lock);
		FUNC8(&peer->rtt_input_lock);
		peer->debug_id = FUNC3(&rxrpc_debug_id);

		if (RXRPC_TX_SMSS > 2190)
			peer->cong_cwnd = 2;
		else if (RXRPC_TX_SMSS > 1095)
			peer->cong_cwnd = 3;
		else
			peer->cong_cwnd = 4;
	}

	FUNC2(" = %p", peer);
	return peer;
}