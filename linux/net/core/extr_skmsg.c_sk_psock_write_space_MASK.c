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
struct sock {int dummy; } ;
struct sk_psock {void (* saved_write_space ) (struct sock*) ;int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  SK_PSOCK_TX_ENABLED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sk_psock* FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sk_psock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	struct sk_psock *psock;
	void (*write_space)(struct sock *sk);

	FUNC1();
	psock = FUNC4(sk);
	if (FUNC0(psock && FUNC5(psock, SK_PSOCK_TX_ENABLED)))
		FUNC3(&psock->work);
	write_space = psock->saved_write_space;
	FUNC2();
	write_space(sk);
}