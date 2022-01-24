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
struct sock {int sk_userlocks; TYPE_1__* sk_prot; scalar_t__ sk_bound_dev_if; int /*<<< orphan*/  sk_state; } ;
struct inet_sock {scalar_t__ inet_sport; scalar_t__ inet_dport; scalar_t__ inet_daddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unhash ) (struct sock*) ;} ;

/* Variables and functions */
 int SOCK_BINDADDR_LOCK ; 
 int SOCK_BINDPORT_LOCK ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 struct inet_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

int FUNC5(struct sock *sk, int flags)
{
	struct inet_sock *inet = FUNC1(sk);
	/*
	 *	1003.1g - break association.
	 */

	sk->sk_state = TCP_CLOSE;
	inet->inet_daddr = 0;
	inet->inet_dport = 0;
	FUNC3(sk);
	sk->sk_bound_dev_if = 0;
	if (!(sk->sk_userlocks & SOCK_BINDADDR_LOCK))
		FUNC0(sk);

	if (!(sk->sk_userlocks & SOCK_BINDPORT_LOCK)) {
		sk->sk_prot->unhash(sk);
		inet->inet_sport = 0;
	}
	FUNC2(sk);
	return 0;
}