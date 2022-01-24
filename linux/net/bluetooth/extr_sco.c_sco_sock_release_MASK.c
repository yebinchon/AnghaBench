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
struct sock {scalar_t__ sk_lingertime; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*) ; 
 int PF_EXITING ; 
 int /*<<< orphan*/  SOCK_LINGER ; 
 int FUNC1 (struct sock*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

__attribute__((used)) static int FUNC8(struct socket *sock)
{
	struct sock *sk = sock->sk;
	int err = 0;

	FUNC0("sock %p, sk %p", sock, sk);

	if (!sk)
		return 0;

	FUNC4(sk);

	if (FUNC6(sk, SOCK_LINGER) && sk->sk_lingertime &&
	    !(current->flags & PF_EXITING)) {
		FUNC2(sk);
		err = FUNC1(sk, BT_CLOSED, sk->sk_lingertime);
		FUNC3(sk);
	}

	FUNC7(sk);
	FUNC5(sk);
	return err;
}