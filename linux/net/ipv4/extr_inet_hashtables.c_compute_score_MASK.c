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
struct sock {unsigned short const sk_num; scalar_t__ const sk_rcv_saddr; scalar_t__ sk_family; int /*<<< orphan*/  sk_incoming_cpu; int /*<<< orphan*/  sk_bound_dev_if; } ;
struct net {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ PF_INET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ,int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct net*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static inline int FUNC6(struct sock *sk, struct net *net,
				const unsigned short hnum, const __be32 daddr,
				const int dif, const int sdif, bool exact_dif)
{
	int score = -1;

	if (FUNC3(FUNC5(sk), net) && sk->sk_num == hnum &&
			!FUNC2(sk)) {
		if (sk->sk_rcv_saddr != daddr)
			return -1;

		if (!FUNC1(net, sk->sk_bound_dev_if, dif, sdif))
			return -1;

		score = sk->sk_family == PF_INET ? 2 : 1;
		if (FUNC0(sk->sk_incoming_cpu) == FUNC4())
			score++;
	}
	return score;
}