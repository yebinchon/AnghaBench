#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_rxrpc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  transport; } ;
struct rxrpc_peer {int /*<<< orphan*/  usage; TYPE_1__ srx; int /*<<< orphan*/  debug_id; } ;
struct rxrpc_local {int dummy; } ;

/* Variables and functions */
 struct rxrpc_peer* FUNC0 (struct rxrpc_local*,struct sockaddr_rxrpc const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct rxrpc_peer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (struct rxrpc_local*,struct sockaddr_rxrpc const*) ; 

struct rxrpc_peer *FUNC5(struct rxrpc_local *local,
					 const struct sockaddr_rxrpc *srx)
{
	struct rxrpc_peer *peer;
	unsigned long hash_key = FUNC4(local, srx);

	peer = FUNC0(local, srx, hash_key);
	if (peer) {
		FUNC2("PEER %d {%pISp}", peer->debug_id, &peer->srx.transport);
		FUNC1(" = %p {u=%d}", peer, FUNC3(&peer->usage));
	}
	return peer;
}