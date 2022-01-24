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
struct j1939_sock {int /*<<< orphan*/  waitq; int /*<<< orphan*/  skb_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct j1939_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct sock *sk)
{
	struct j1939_sock *jsk = FUNC1(sk);

	/* atomic_dec_return returns the new value */
	if (!FUNC0(&jsk->skb_pending))
		FUNC2(&jsk->waitq);	/* no pending SKB's */
}