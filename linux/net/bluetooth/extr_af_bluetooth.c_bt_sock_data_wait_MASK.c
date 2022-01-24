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
struct sock {int sk_shutdown; scalar_t__ sk_err; int /*<<< orphan*/  sk_receive_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_WAITDATA ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC6 (long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static long FUNC13(struct sock *sk, long timeo)
{
	FUNC0(wait, current);

	FUNC2(FUNC11(sk), &wait);
	for (;;) {
		FUNC7(TASK_INTERRUPTIBLE);

		if (!FUNC12(&sk->sk_receive_queue))
			break;

		if (sk->sk_err || (sk->sk_shutdown & RCV_SHUTDOWN))
			break;

		if (FUNC8(current) || !timeo)
			break;

		FUNC10(SOCKWQ_ASYNC_WAITDATA, sk);
		FUNC4(sk);
		timeo = FUNC6(timeo);
		FUNC3(sk);
		FUNC9(SOCKWQ_ASYNC_WAITDATA, sk);
	}

	FUNC1(TASK_RUNNING);
	FUNC5(FUNC11(sk), &wait);
	return timeo;
}