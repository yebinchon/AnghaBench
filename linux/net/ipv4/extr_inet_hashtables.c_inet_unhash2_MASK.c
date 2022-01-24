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
struct inet_listen_hashbucket {int /*<<< orphan*/  lock; int /*<<< orphan*/  count; } ;
struct inet_hashinfo {int /*<<< orphan*/  lhash2; } ;
struct TYPE_2__ {int /*<<< orphan*/  icsk_listen_portaddr_node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 struct inet_listen_hashbucket* FUNC4 (struct inet_hashinfo*,struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct inet_hashinfo *h, struct sock *sk)
{
	struct inet_listen_hashbucket *ilb2;

	if (!h->lhash2 ||
	    FUNC0(FUNC2(&FUNC3(sk)->icsk_listen_portaddr_node)))
		return;

	ilb2 = FUNC4(h, sk);

	FUNC5(&ilb2->lock);
	FUNC1(&FUNC3(sk)->icsk_listen_portaddr_node);
	ilb2->count--;
	FUNC6(&ilb2->lock);
}