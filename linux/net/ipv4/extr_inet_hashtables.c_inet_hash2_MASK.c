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
struct sock {scalar_t__ sk_family; scalar_t__ sk_reuseport; } ;
struct inet_listen_hashbucket {int /*<<< orphan*/  lock; int /*<<< orphan*/  count; int /*<<< orphan*/  head; } ;
struct inet_hashinfo {int /*<<< orphan*/  lhash2; } ;
struct TYPE_2__ {int /*<<< orphan*/  icsk_listen_portaddr_node; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 struct inet_listen_hashbucket* FUNC3 (struct inet_hashinfo*,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct inet_hashinfo *h, struct sock *sk)
{
	struct inet_listen_hashbucket *ilb2;

	if (!h->lhash2)
		return;

	ilb2 = FUNC3(h, sk);

	FUNC4(&ilb2->lock);
	if (sk->sk_reuseport && sk->sk_family == AF_INET6)
		FUNC1(&FUNC2(sk)->icsk_listen_portaddr_node,
				   &ilb2->head);
	else
		FUNC0(&FUNC2(sk)->icsk_listen_portaddr_node,
				   &ilb2->head);
	ilb2->count++;
	FUNC5(&ilb2->lock);
}