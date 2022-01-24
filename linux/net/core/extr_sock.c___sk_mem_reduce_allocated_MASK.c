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
struct sock {scalar_t__ sk_memcg; } ;

/* Variables and functions */
 scalar_t__ mem_cgroup_sockets_enabled ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 
 scalar_t__ FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sock*) ; 

void FUNC6(struct sock *sk, int amount)
{
	FUNC3(sk, amount);

	if (mem_cgroup_sockets_enabled && sk->sk_memcg)
		FUNC0(sk->sk_memcg, amount);

	if (FUNC5(sk) &&
	    (FUNC2(sk) < FUNC4(sk, 0)))
		FUNC1(sk);
}