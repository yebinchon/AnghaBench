#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {int /*<<< orphan*/  sk; } ;
struct sockaddr_rxrpc {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {int sk_state; } ;
struct rxrpc_sock {TYPE_1__ sk; int /*<<< orphan*/  flags; struct sockaddr_rxrpc connect_srx; } ;

/* Variables and functions */
 int EBUSY ; 
 int EISCONN ; 
#define  RXRPC_CLIENT_BOUND 130 
#define  RXRPC_CLIENT_UNBOUND 129 
 int /*<<< orphan*/  RXRPC_SOCK_CONNECTED ; 
#define  RXRPC_UNBOUND 128 
 int /*<<< orphan*/  FUNC0 (char*,struct rxrpc_sock*,struct sockaddr*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct rxrpc_sock* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rxrpc_sock*,struct sockaddr_rxrpc*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct socket *sock, struct sockaddr *addr,
			 int addr_len, int flags)
{
	struct sockaddr_rxrpc *srx = (struct sockaddr_rxrpc *)addr;
	struct rxrpc_sock *rx = FUNC4(sock->sk);
	int ret;

	FUNC0("%p,%p,%d,%d", rx, addr, addr_len, flags);

	ret = FUNC5(rx, srx, addr_len);
	if (ret < 0) {
		FUNC1(" = %d [bad addr]", ret);
		return ret;
	}

	FUNC2(&rx->sk);

	ret = -EISCONN;
	if (FUNC7(RXRPC_SOCK_CONNECTED, &rx->flags))
		goto error;

	switch (rx->sk.sk_state) {
	case RXRPC_UNBOUND:
		rx->sk.sk_state = RXRPC_CLIENT_UNBOUND;
	case RXRPC_CLIENT_UNBOUND:
	case RXRPC_CLIENT_BOUND:
		break;
	default:
		ret = -EBUSY;
		goto error;
	}

	rx->connect_srx = *srx;
	FUNC6(RXRPC_SOCK_CONNECTED, &rx->flags);
	ret = 0;

error:
	FUNC3(&rx->sk);
	return ret;
}