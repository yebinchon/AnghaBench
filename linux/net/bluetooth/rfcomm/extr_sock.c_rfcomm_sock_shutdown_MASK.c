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
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_lingertime; int /*<<< orphan*/  sk_shutdown; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*) ; 
 int PF_EXITING ; 
 int /*<<< orphan*/  SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCK_LINGER ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int FUNC2 (struct sock*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct socket *sock, int how)
{
	struct sock *sk = sock->sk;
	int err = 0;

	FUNC0("sock %p, sk %p", sock, sk);

	if (!sk)
		return 0;

	FUNC3(sk);
	if (!sk->sk_shutdown) {
		sk->sk_shutdown = SHUTDOWN_MASK;
		FUNC1(sk);

		if (FUNC5(sk, SOCK_LINGER) && sk->sk_lingertime &&
		    !(current->flags & PF_EXITING))
			err = FUNC2(sk, BT_CLOSED, sk->sk_lingertime);
	}
	FUNC4(sk);
	return err;
}