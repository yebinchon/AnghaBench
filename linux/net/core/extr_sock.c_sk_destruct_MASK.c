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
struct sock {int /*<<< orphan*/  sk_rcu; int /*<<< orphan*/  sk_reuseport_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_RCU_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 

void FUNC5(struct sock *sk)
{
	bool use_call_rcu = FUNC4(sk, SOCK_RCU_FREE);

	if (FUNC2(sk->sk_reuseport_cb)) {
		FUNC3(sk);
		use_call_rcu = true;
	}

	if (use_call_rcu)
		FUNC1(&sk->sk_rcu, __sk_destruct);
	else
		FUNC0(&sk->sk_rcu);
}