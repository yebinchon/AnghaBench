#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_shutdown; scalar_t__ sk_err; TYPE_3__* sk_socket; } ;
struct TYPE_4__ {scalar_t__ peer_done_writing; } ;
struct TYPE_5__ {TYPE_1__ conn_state_flags; } ;
struct smc_connection {int /*<<< orphan*/  urg_tx_pend; int /*<<< orphan*/  sndbuf_space; TYPE_2__ local_tx_ctrl; } ;
struct smc_sock {struct sock sk; struct smc_connection conn; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ECONNRESET ; 
 int EPIPE ; 
 int MSG_DONTWAIT ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,long*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct smc_connection*) ; 
 int FUNC11 (long) ; 
 long FUNC12 (struct sock*,int) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static int FUNC13(struct smc_sock *smc, int flags)
{
	FUNC0(wait, woken_wake_function);
	struct smc_connection *conn = &smc->conn;
	struct sock *sk = &smc->sk;
	long timeo;
	int rc = 0;

	/* similar to sk_stream_wait_memory */
	timeo = FUNC12(sk, flags & MSG_DONTWAIT);
	FUNC1(FUNC8(sk), &wait);
	while (1) {
		FUNC7(SOCKWQ_ASYNC_NOSPACE, sk);
		if (sk->sk_err ||
		    (sk->sk_shutdown & SEND_SHUTDOWN) ||
		    conn->local_tx_ctrl.conn_state_flags.peer_done_writing) {
			rc = -EPIPE;
			break;
		}
		if (FUNC10(conn)) {
			rc = -ECONNRESET;
			break;
		}
		if (!timeo) {
			/* ensure EPOLLOUT is subsequently generated */
			FUNC4(SOCK_NOSPACE, &sk->sk_socket->flags);
			rc = -EAGAIN;
			break;
		}
		if (FUNC5(current)) {
			rc = FUNC11(timeo);
			break;
		}
		FUNC6(SOCKWQ_ASYNC_NOSPACE, sk);
		if (FUNC2(&conn->sndbuf_space) && !conn->urg_tx_pend)
			break; /* at least 1 byte of free & no urgent data */
		FUNC4(SOCK_NOSPACE, &sk->sk_socket->flags);
		FUNC9(sk, &timeo,
			      sk->sk_err ||
			      (sk->sk_shutdown & SEND_SHUTDOWN) ||
			      FUNC10(conn) ||
			      (FUNC2(&conn->sndbuf_space) &&
			       !conn->urg_tx_pend),
			      &wait);
	}
	FUNC3(FUNC8(sk), &wait);
	return rc;
}