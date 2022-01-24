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
struct sock {unsigned long sk_flags; } ;

/* Variables and functions */
 unsigned long SK_FLAGS_TIMESTAMP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int) ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 

void FUNC4(struct sock *sk, int flag)
{
	if (!FUNC1(sk, flag)) {
		unsigned long previous_flags = sk->sk_flags;

		FUNC3(sk, flag);
		/*
		 * we just set one of the two flags which require net
		 * time stamping, but time stamping might have been on
		 * already because of the other one
		 */
		if (FUNC2(sk) &&
		    !(previous_flags & SK_FLAGS_TIMESTAMP))
			FUNC0();
	}
}