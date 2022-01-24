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
struct sock {int /*<<< orphan*/  sk_callback_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  strp; } ;
struct sk_psock {TYPE_1__ parser; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_psock*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct sk_psock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	struct sk_psock *psock;

	FUNC1();
	psock = FUNC3(sk);
	if (FUNC0(psock)) {
		FUNC5(&sk->sk_callback_lock);
		FUNC4(&psock->parser.strp);
		FUNC6(&sk->sk_callback_lock);
	}
	FUNC2();
}