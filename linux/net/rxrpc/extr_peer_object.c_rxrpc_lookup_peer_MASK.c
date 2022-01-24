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
struct sockaddr_rxrpc {int /*<<< orphan*/  transport; } ;
struct rxrpc_sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  transport; } ;
struct rxrpc_peer {int /*<<< orphan*/  usage; TYPE_1__ srx; int /*<<< orphan*/  debug_id; int /*<<< orphan*/  keepalive_link; int /*<<< orphan*/  hash_link; } ;
struct rxrpc_net {int /*<<< orphan*/  peer_hash_lock; int /*<<< orphan*/  peer_keepalive_new; int /*<<< orphan*/  peer_hash; } ;
struct rxrpc_local {struct rxrpc_net* rxnet; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct rxrpc_peer* FUNC0 (struct rxrpc_local*,struct sockaddr_rxrpc*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct rxrpc_peer*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct rxrpc_peer* FUNC10 (struct rxrpc_sock*,struct rxrpc_local*,struct sockaddr_rxrpc*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rxrpc_peer*) ; 
 unsigned long FUNC12 (struct rxrpc_local*,struct sockaddr_rxrpc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

struct rxrpc_peer *FUNC15(struct rxrpc_sock *rx,
				     struct rxrpc_local *local,
				     struct sockaddr_rxrpc *srx, gfp_t gfp)
{
	struct rxrpc_peer *peer, *candidate;
	struct rxrpc_net *rxnet = local->rxnet;
	unsigned long hash_key = FUNC12(local, srx);

	FUNC1("{%pISp}", &srx->transport);

	/* search the peer list first */
	FUNC8();
	peer = FUNC0(local, srx, hash_key);
	if (peer && !FUNC11(peer))
		peer = NULL;
	FUNC9();

	if (!peer) {
		/* The peer is not yet present in hash - create a candidate
		 * for a new record and then redo the search.
		 */
		candidate = FUNC10(rx, local, srx, hash_key, gfp);
		if (!candidate) {
			FUNC2(" = NULL [nomem]");
			return NULL;
		}

		FUNC13(&rxnet->peer_hash_lock);

		/* Need to check that we aren't racing with someone else */
		peer = FUNC0(local, srx, hash_key);
		if (peer && !FUNC11(peer))
			peer = NULL;
		if (!peer) {
			FUNC5(rxnet->peer_hash,
				     &candidate->hash_link, hash_key);
			FUNC7(&candidate->keepalive_link,
				      &rxnet->peer_keepalive_new);
		}

		FUNC14(&rxnet->peer_hash_lock);

		if (peer)
			FUNC6(candidate);
		else
			peer = candidate;
	}

	FUNC3("PEER %d {%pISp}", peer->debug_id, &peer->srx.transport);

	FUNC2(" = %p {u=%d}", peer, FUNC4(&peer->usage));
	return peer;
}