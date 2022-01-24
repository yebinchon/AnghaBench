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
struct sock {scalar_t__ sk_family; int /*<<< orphan*/  sk_incoming_cpu; int /*<<< orphan*/  sk_bound_dev_if; int /*<<< orphan*/  sk_v6_daddr; int /*<<< orphan*/  sk_v6_rcv_saddr; } ;
struct net {int dummy; } ;
struct inet_sock {scalar_t__ inet_dport; } ;
struct in6_addr {int dummy; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_2__ {unsigned short udp_port_hash; } ;

/* Variables and functions */
 scalar_t__ PF_INET6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 TYPE_1__* FUNC7 (struct sock*) ; 
 int FUNC8 (struct net*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC9(struct sock *sk, struct net *net,
			 const struct in6_addr *saddr, __be16 sport,
			 const struct in6_addr *daddr, unsigned short hnum,
			 int dif, int sdif)
{
	int score;
	struct inet_sock *inet;
	bool dev_match;

	if (!FUNC4(FUNC6(sk), net) ||
	    FUNC7(sk)->udp_port_hash != hnum ||
	    sk->sk_family != PF_INET6)
		return -1;

	if (!FUNC3(&sk->sk_v6_rcv_saddr, daddr))
		return -1;

	score = 0;
	inet = FUNC1(sk);

	if (inet->inet_dport) {
		if (inet->inet_dport != sport)
			return -1;
		score++;
	}

	if (!FUNC2(&sk->sk_v6_daddr)) {
		if (!FUNC3(&sk->sk_v6_daddr, saddr))
			return -1;
		score++;
	}

	dev_match = FUNC8(net, sk->sk_bound_dev_if, dif, sdif);
	if (!dev_match)
		return -1;
	score++;

	if (FUNC0(sk->sk_incoming_cpu) == FUNC5())
		score++;

	return score;
}