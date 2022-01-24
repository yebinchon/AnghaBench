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
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_psock {int /*<<< orphan*/  ingress_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_WAITDATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int FUNC7 (struct sock*,long*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static int FUNC9(struct sock *sk, struct sk_psock *psock,
			     int flags, long timeo, int *err)
{
	FUNC0(wait, woken_wake_function);
	int ret = 0;

	if (!timeo)
		return ret;

	FUNC1(FUNC6(sk), &wait);
	FUNC5(SOCKWQ_ASYNC_WAITDATA, sk);
	ret = FUNC7(sk, &timeo,
			    !FUNC2(&psock->ingress_msg) ||
			    !FUNC8(&sk->sk_receive_queue), &wait);
	FUNC4(SOCKWQ_ASYNC_WAITDATA, sk);
	FUNC3(FUNC6(sk), &wait);
	return ret;
}