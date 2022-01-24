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
struct sock {scalar_t__ sk_family; int /*<<< orphan*/  sk_incoming_cpu; int /*<<< orphan*/  sk_bound_dev_if; int /*<<< orphan*/  sk_v6_rcv_saddr; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {unsigned short const inet_num; } ;

/* Variables and functions */
 scalar_t__ PF_INET6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ,int const,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct net*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static inline int FUNC7(struct sock *sk, struct net *net,
				const unsigned short hnum,
				const struct in6_addr *daddr,
				const int dif, const int sdif, bool exact_dif)
{
	int score = -1;

	if (FUNC4(FUNC6(sk), net) && FUNC1(sk)->inet_num == hnum &&
	    sk->sk_family == PF_INET6) {
		if (!FUNC3(&sk->sk_v6_rcv_saddr, daddr))
			return -1;

		if (!FUNC2(net, sk->sk_bound_dev_if, dif, sdif))
			return -1;

		score = 1;
		if (FUNC0(sk->sk_incoming_cpu) == FUNC5())
			score++;
	}
	return score;
}