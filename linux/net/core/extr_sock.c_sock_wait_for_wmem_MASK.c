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
struct sock {int sk_shutdown; scalar_t__ sk_err; int /*<<< orphan*/  sk_sndbuf; int /*<<< orphan*/  sk_wmem_alloc; TYPE_1__* sk_socket; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 long FUNC5 (long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static long FUNC10(struct sock *sk, long timeo)
{
	FUNC0(wait);

	FUNC8(SOCKWQ_ASYNC_NOSPACE, sk);
	for (;;) {
		if (!timeo)
			break;
		if (FUNC7(current))
			break;
		FUNC6(SOCK_NOSPACE, &sk->sk_socket->flags);
		FUNC3(FUNC9(sk), &wait, TASK_INTERRUPTIBLE);
		if (FUNC4(&sk->sk_wmem_alloc) < FUNC1(sk->sk_sndbuf))
			break;
		if (sk->sk_shutdown & SEND_SHUTDOWN)
			break;
		if (sk->sk_err)
			break;
		timeo = FUNC5(timeo);
	}
	FUNC2(FUNC9(sk), &wait);
	return timeo;
}