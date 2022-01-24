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
struct rxrpc_peer {TYPE_1__* local; int /*<<< orphan*/  keepalive_link; int /*<<< orphan*/  hash_link; int /*<<< orphan*/  error_targets; } ;
struct rxrpc_net {int /*<<< orphan*/  peer_hash_lock; } ;
struct TYPE_2__ {struct rxrpc_net* rxnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rxrpc_peer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct rxrpc_peer *peer)
{
	struct rxrpc_net *rxnet = peer->local->rxnet;

	FUNC0(FUNC2(&peer->error_targets));

	FUNC6(&rxnet->peer_hash_lock);
	FUNC1(&peer->hash_link);
	FUNC4(&peer->keepalive_link);
	FUNC7(&rxnet->peer_hash_lock);

	FUNC5(peer->local);
	FUNC3(peer, rcu);
}