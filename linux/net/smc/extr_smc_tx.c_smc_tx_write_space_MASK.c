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
struct socket_wq {scalar_t__ fasync_list; int /*<<< orphan*/  wait; } ;
struct socket {int /*<<< orphan*/  flags; } ;
struct sock {int sk_shutdown; int /*<<< orphan*/  sk_wq; struct socket* sk_socket; } ;
struct TYPE_2__ {int /*<<< orphan*/  sndbuf_space; } ;
struct smc_sock {TYPE_1__ conn; } ;

/* Variables and functions */
 int EPOLLOUT ; 
 int EPOLLWRBAND ; 
 int EPOLLWRNORM ; 
 int /*<<< orphan*/  POLL_OUT ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  SOCK_WAKE_SPACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct socket_wq* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct socket_wq*) ; 
 struct smc_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket_wq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(struct sock *sk)
{
	struct socket *sock = sk->sk_socket;
	struct smc_sock *smc = FUNC6(sk);
	struct socket_wq *wq;

	/* similar to sk_stream_write_space */
	if (FUNC0(&smc->conn.sndbuf_space) && sock) {
		FUNC1(SOCK_NOSPACE, &sock->flags);
		FUNC3();
		wq = FUNC2(sk->sk_wq);
		if (FUNC5(wq))
			FUNC8(&wq->wait,
						   EPOLLOUT | EPOLLWRNORM |
						   EPOLLWRBAND);
		if (wq && wq->fasync_list && !(sk->sk_shutdown & SEND_SHUTDOWN))
			FUNC7(wq, SOCK_WAKE_SPACE, POLL_OUT);
		FUNC4();
	}
}