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
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;
struct pep_sock {TYPE_1__ pn_sk; int /*<<< orphan*/  hlist; struct sock* listener; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct pep_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	struct pep_sock *pn = FUNC2(sk);
	struct sock *skparent = NULL;

	FUNC1(sk);

	if (pn->listener != NULL) {
		skparent = pn->listener;
		pn->listener = NULL;
		FUNC4(sk);

		pn = FUNC2(skparent);
		FUNC1(skparent);
		FUNC5(sk);
		sk = skparent;
	}

	/* Unhash a listening sock only when it is closed
	 * and all of its active connected pipes are closed. */
	if (FUNC0(&pn->hlist))
		FUNC3(&pn->pn_sk.sk);
	FUNC4(sk);

	if (skparent)
		FUNC6(skparent);
}