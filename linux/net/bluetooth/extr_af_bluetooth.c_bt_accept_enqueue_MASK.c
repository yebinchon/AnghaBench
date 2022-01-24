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
struct sock {int /*<<< orphan*/  sk_ack_backlog; } ;
struct TYPE_2__ {struct sock* parent; int /*<<< orphan*/  accept_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,struct sock*) ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

void FUNC8(struct sock *parent, struct sock *sk, bool bh)
{
	FUNC0("parent %p, sk %p", parent, sk);

	FUNC7(sk);

	if (bh)
		FUNC1(sk);
	else
		FUNC5(sk, SINGLE_DEPTH_NESTING);

	FUNC4(&FUNC3(sk)->accept_q, &FUNC3(parent)->accept_q);
	FUNC3(sk)->parent = parent;

	if (bh)
		FUNC2(sk);
	else
		FUNC6(sk);

	parent->sk_ack_backlog++;
}