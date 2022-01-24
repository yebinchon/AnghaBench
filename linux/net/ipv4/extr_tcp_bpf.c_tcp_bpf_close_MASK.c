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
struct sk_psock {void (* saved_close ) (struct sock*,long) ;} ;
struct TYPE_2__ {void (* close ) (struct sock*,long) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct sk_psock* FUNC4 (struct sock*) ; 
 void FUNC5 (struct sock*,long) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_psock*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct sock *sk, long timeout)
{
	void (*saved_close)(struct sock *sk, long timeout);
	struct sk_psock *psock;

	FUNC0(sk);
	FUNC1();
	psock = FUNC4(sk);
	if (FUNC7(!psock)) {
		FUNC2();
		FUNC3(sk);
		return sk->sk_prot->close(sk, timeout);
	}

	saved_close = psock->saved_close;
	FUNC6(sk, psock);
	FUNC2();
	FUNC3(sk);
	saved_close(sk, timeout);
}