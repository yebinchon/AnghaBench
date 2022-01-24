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
struct sock {scalar_t__ sk_state; int sk_shutdown; scalar_t__ sk_err; int /*<<< orphan*/  sk_receive_queue; } ;

/* Variables and functions */
 scalar_t__ CAIF_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_WAITDATA ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 long FUNC5 (long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static long FUNC12(struct sock *sk, long timeo)
{
	FUNC0(wait);
	FUNC2(sk);

	for (;;) {
		FUNC3(FUNC9(sk), &wait, TASK_INTERRUPTIBLE);

		if (!FUNC10(&sk->sk_receive_queue) ||
			sk->sk_err ||
			sk->sk_state != CAIF_CONNECTED ||
			FUNC11(sk, SOCK_DEAD) ||
			(sk->sk_shutdown & RCV_SHUTDOWN) ||
			FUNC6(current) ||
			!timeo)
			break;

		FUNC8(SOCKWQ_ASYNC_WAITDATA, sk);
		FUNC4(sk);
		timeo = FUNC5(timeo);
		FUNC2(sk);

		if (FUNC11(sk, SOCK_DEAD))
			break;

		FUNC7(SOCKWQ_ASYNC_WAITDATA, sk);
	}

	FUNC1(FUNC9(sk), &wait);
	FUNC4(sk);
	return timeo;
}