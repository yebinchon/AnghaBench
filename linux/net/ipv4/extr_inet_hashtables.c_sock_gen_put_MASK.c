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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_refcnt; } ;

/* Variables and functions */
 scalar_t__ TCP_NEW_SYN_RECV ; 
 scalar_t__ TCP_TIME_WAIT ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

void FUNC6(struct sock *sk)
{
	if (!FUNC3(&sk->sk_refcnt))
		return;

	if (sk->sk_state == TCP_TIME_WAIT)
		FUNC2(FUNC1(sk));
	else if (sk->sk_state == TCP_NEW_SYN_RECV)
		FUNC4(FUNC0(sk));
	else
		FUNC5(sk);
}