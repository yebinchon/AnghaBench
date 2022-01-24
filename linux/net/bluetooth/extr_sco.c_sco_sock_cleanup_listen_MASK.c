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
struct sock {int /*<<< orphan*/  sk_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*) ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 struct sock* FUNC1 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sock *parent)
{
	struct sock *sk;

	FUNC0("parent %p", parent);

	/* Close not yet accepted channels */
	while ((sk = FUNC1(parent, NULL))) {
		FUNC2(sk);
		FUNC3(sk);
	}

	parent->sk_state  = BT_CLOSED;
	FUNC4(parent, SOCK_ZAPPED);
}