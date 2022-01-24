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
struct sock {int /*<<< orphan*/  sk_prot; } ;
struct sk_psock {scalar_t__ sk_proto; } ;
struct proto {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct proto* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct sk_psock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct proto*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct proto*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_psock*) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct sock *sk)
{
	struct proto *ops = FUNC0(sk->sk_prot);
	struct sk_psock *psock;

	FUNC4(sk);

	FUNC1();
	psock = FUNC3(sk);
	if (FUNC8(!psock || psock->sk_proto ||
		     FUNC5(ops))) {
		FUNC2();
		return -EINVAL;
	}
	FUNC6(sk, ops);
	FUNC7(sk, psock);
	FUNC2();
	return 0;
}