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
struct socket {struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct TYPE_6__ {int /*<<< orphan*/  bytes_to_rcv; } ;
struct TYPE_4__ {scalar_t__ sk_state; } ;
struct smc_sock {int sockopt_defer_accept; TYPE_3__ conn; TYPE_2__* clcsock; scalar_t__ use_fallback; TYPE_1__ sk; } ;
struct TYPE_5__ {struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EINVAL ; 
 int MSEC_PER_SEC ; 
 int O_NONBLOCK ; 
 scalar_t__ SMC_LISTEN ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 long FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 long FUNC8 (long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,long*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC14 (struct sock*,struct socket*) ; 
 int /*<<< orphan*/  smc_rx_data_available ; 
 int /*<<< orphan*/  FUNC15 (struct smc_sock*,long*,int /*<<< orphan*/ ) ; 
 struct smc_sock* FUNC16 (struct sock*) ; 
 int FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 int FUNC19 (long) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 long FUNC21 (struct sock*,int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC22(struct socket *sock, struct socket *new_sock,
		      int flags, bool kern)
{
	struct sock *sk = sock->sk, *nsk;
	FUNC0(wait, current);
	struct smc_sock *lsmc;
	long timeo;
	int rc = 0;

	lsmc = FUNC16(sk);
	FUNC18(sk); /* sock_put below */
	FUNC3(sk);

	if (lsmc->sk.sk_state != SMC_LISTEN) {
		rc = -EINVAL;
		FUNC5(sk);
		goto out;
	}

	/* Wait for an incoming connection */
	timeo = FUNC21(sk, flags & O_NONBLOCK);
	FUNC1(FUNC11(sk), &wait);
	while (!(nsk = FUNC14(sk, new_sock))) {
		FUNC9(TASK_INTERRUPTIBLE);
		if (!timeo) {
			rc = -EAGAIN;
			break;
		}
		FUNC5(sk);
		timeo = FUNC8(timeo);
		/* wakeup by sk_data_ready in smc_listen_work() */
		FUNC7();
		FUNC3(sk);
		if (FUNC10(current)) {
			rc = FUNC19(timeo);
			break;
		}
	}
	FUNC9(TASK_RUNNING);
	FUNC6(FUNC11(sk), &wait);

	if (!rc)
		rc = FUNC17(nsk);
	FUNC5(sk);
	if (rc)
		goto out;

	if (lsmc->sockopt_defer_accept && !(flags & O_NONBLOCK)) {
		/* wait till data arrives on the socket */
		timeo = FUNC4(lsmc->sockopt_defer_accept *
								MSEC_PER_SEC);
		if (FUNC16(nsk)->use_fallback) {
			struct sock *clcsk = FUNC16(nsk)->clcsock->sk;

			FUNC3(clcsk);
			if (FUNC13(&clcsk->sk_receive_queue))
				FUNC12(clcsk, &timeo, NULL);
			FUNC5(clcsk);
		} else if (!FUNC2(&FUNC16(nsk)->conn.bytes_to_rcv)) {
			FUNC3(nsk);
			FUNC15(FUNC16(nsk), &timeo, smc_rx_data_available);
			FUNC5(nsk);
		}
	}

out:
	FUNC20(sk); /* sock_hold above */
	return rc;
}