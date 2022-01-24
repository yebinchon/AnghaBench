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
struct sock {TYPE_1__* sk_prot; } ;
struct sk_psock {void (* saved_unhash ) (struct sock*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  (* unhash ) (struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct sk_psock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_psock*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	void (*saved_unhash)(struct sock *sk);
	struct sk_psock *psock;

	FUNC0();
	psock = FUNC2(sk);
	if (FUNC5(!psock)) {
		FUNC1();
		if (sk->sk_prot->unhash)
			sk->sk_prot->unhash(sk);
		return;
	}

	saved_unhash = psock->saved_unhash;
	FUNC4(sk, psock);
	FUNC1();
	saved_unhash(sk);
}