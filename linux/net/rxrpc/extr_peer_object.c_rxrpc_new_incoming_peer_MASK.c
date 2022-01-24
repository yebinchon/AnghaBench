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
struct rxrpc_sock {int dummy; } ;
struct rxrpc_peer {int /*<<< orphan*/  keepalive_link; int /*<<< orphan*/  hash_link; int /*<<< orphan*/  srx; } ;
struct rxrpc_net {int /*<<< orphan*/  peer_hash_lock; int /*<<< orphan*/  peer_keepalive_new; int /*<<< orphan*/  peer_hash; } ;
struct rxrpc_local {struct rxrpc_net* rxnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rxrpc_sock*,struct rxrpc_peer*,unsigned long) ; 
 unsigned long FUNC3 (struct rxrpc_local*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct rxrpc_sock *rx, struct rxrpc_local *local,
			     struct rxrpc_peer *peer)
{
	struct rxrpc_net *rxnet = local->rxnet;
	unsigned long hash_key;

	hash_key = FUNC3(local, &peer->srx);
	FUNC2(rx, peer, hash_key);

	FUNC4(&rxnet->peer_hash_lock);
	FUNC0(rxnet->peer_hash, &peer->hash_link, hash_key);
	FUNC1(&peer->keepalive_link, &rxnet->peer_keepalive_new);
	FUNC5(&rxnet->peer_hash_lock);
}