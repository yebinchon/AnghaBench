#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct sock {int sk_state; TYPE_2__ sk_receive_queue; int /*<<< orphan*/  sk_shutdown; int /*<<< orphan*/  sk_refcnt; } ;
struct rxrpc_sock {int /*<<< orphan*/ * securities; int /*<<< orphan*/ * key; TYPE_1__* local; } ;
struct TYPE_3__ {int service_closed; int /*<<< orphan*/  services_lock; int /*<<< orphan*/  service; } ;

/* Variables and functions */
 int RXRPC_CLOSE ; 
#define  RXRPC_SERVER_BOUND 131 
#define  RXRPC_SERVER_BOUND2 130 
#define  RXRPC_SERVER_LISTENING 129 
#define  RXRPC_SERVER_LISTEN_DISABLED 128 
 int /*<<< orphan*/  SHUTDOWN_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct rxrpc_sock* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rxrpc_sock*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct rxrpc_sock*) ; 
 struct rxrpc_sock* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  rxrpc_workqueue ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct sock *sk)
{
	struct rxrpc_sock *rx = FUNC10(sk);

	FUNC0("%p{%d,%d}", sk, sk->sk_state, FUNC6(&sk->sk_refcnt));

	/* declare the socket closed for business */
	FUNC12(sk);
	sk->sk_shutdown = SHUTDOWN_MASK;

	/* We want to kill off all connections from a service socket
	 * as fast as possible because we can't share these; client
	 * sockets, on the other hand, can share an endpoint.
	 */
	switch (sk->sk_state) {
	case RXRPC_SERVER_BOUND:
	case RXRPC_SERVER_BOUND2:
	case RXRPC_SERVER_LISTENING:
	case RXRPC_SERVER_LISTEN_DISABLED:
		rx->local->service_closed = true;
		break;
	}

	FUNC14(&sk->sk_receive_queue.lock);
	sk->sk_state = RXRPC_CLOSE;
	FUNC15(&sk->sk_receive_queue.lock);

	if (rx->local && FUNC4(rx->local->service) == rx) {
		FUNC16(&rx->local->services_lock);
		FUNC5(rx->local->service, NULL);
		FUNC17(&rx->local->services_lock);
	}

	/* try to flush out this socket */
	FUNC7(rx);
	FUNC9(rx);
	FUNC2(rxrpc_workqueue);
	FUNC8(&sk->sk_receive_queue);

	FUNC11(rx->local);
	rx->local = NULL;
	FUNC3(rx->key);
	rx->key = NULL;
	FUNC3(rx->securities);
	rx->securities = NULL;
	FUNC13(sk);

	FUNC1(" = 0");
	return 0;
}