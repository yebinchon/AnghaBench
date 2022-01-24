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
struct sockaddr_rxrpc {int dummy; } ;
struct rxrpc_sock {int dummy; } ;
struct rxrpc_peer {int /*<<< orphan*/  srx; } ;
struct rxrpc_local {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct rxrpc_peer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sockaddr_rxrpc*,int) ; 
 struct rxrpc_peer* FUNC3 (struct rxrpc_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rxrpc_sock*,struct rxrpc_peer*,unsigned long) ; 

__attribute__((used)) static struct rxrpc_peer *FUNC5(struct rxrpc_sock *rx,
					    struct rxrpc_local *local,
					    struct sockaddr_rxrpc *srx,
					    unsigned long hash_key,
					    gfp_t gfp)
{
	struct rxrpc_peer *peer;

	FUNC0("");

	peer = FUNC3(local, gfp);
	if (peer) {
		FUNC2(&peer->srx, srx, sizeof(*srx));
		FUNC4(rx, peer, hash_key);
	}

	FUNC1(" = %p", peer);
	return peer;
}