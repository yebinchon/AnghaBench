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
struct socket {struct sock* sk; } ;
struct sock {unsigned int sk_max_ack_backlog; } ;
struct TYPE_3__ {int sk_state; } ;
struct rxrpc_sock {TYPE_1__ sk; int /*<<< orphan*/ * local; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EADDRNOTAVAIL ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INT_MAX ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
#define  RXRPC_SERVER_BOUND 131 
#define  RXRPC_SERVER_BOUND2 130 
#define  RXRPC_SERVER_LISTENING 129 
 int RXRPC_SERVER_LISTEN_DISABLED ; 
#define  RXRPC_UNBOUND 128 
 int /*<<< orphan*/  FUNC2 (char*,struct rxrpc_sock*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct rxrpc_sock*) ; 
 int /*<<< orphan*/  rxrpc_max_backlog ; 
 int FUNC7 (struct rxrpc_sock*,int /*<<< orphan*/ ) ; 
 struct rxrpc_sock* FUNC8 (struct sock*) ; 

__attribute__((used)) static int FUNC9(struct socket *sock, int backlog)
{
	struct sock *sk = sock->sk;
	struct rxrpc_sock *rx = FUNC8(sk);
	unsigned int max, old;
	int ret;

	FUNC2("%p,%d", rx, backlog);

	FUNC4(&rx->sk);

	switch (rx->sk.sk_state) {
	case RXRPC_UNBOUND:
		ret = -EADDRNOTAVAIL;
		break;
	case RXRPC_SERVER_BOUND:
	case RXRPC_SERVER_BOUND2:
		FUNC0(rx->local != NULL);
		max = FUNC1(rxrpc_max_backlog);
		ret = -EINVAL;
		if (backlog == INT_MAX)
			backlog = max;
		else if (backlog < 0 || backlog > max)
			break;
		old = sk->sk_max_ack_backlog;
		sk->sk_max_ack_backlog = backlog;
		ret = FUNC7(rx, GFP_KERNEL);
		if (ret == 0)
			rx->sk.sk_state = RXRPC_SERVER_LISTENING;
		else
			sk->sk_max_ack_backlog = old;
		break;
	case RXRPC_SERVER_LISTENING:
		if (backlog == 0) {
			rx->sk.sk_state = RXRPC_SERVER_LISTEN_DISABLED;
			sk->sk_max_ack_backlog = 0;
			FUNC6(rx);
			ret = 0;
			break;
		}
		/* Fall through */
	default:
		ret = -EBUSY;
		break;
	}

	FUNC5(&rx->sk);
	FUNC3(" = %d", ret);
	return ret;
}