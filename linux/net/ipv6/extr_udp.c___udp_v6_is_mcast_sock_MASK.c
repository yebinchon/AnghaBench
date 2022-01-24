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
struct sock {scalar_t__ sk_family; int /*<<< orphan*/  sk_v6_rcv_saddr; int /*<<< orphan*/  sk_bound_dev_if; int /*<<< orphan*/  sk_v6_daddr; } ;
struct net {int dummy; } ;
struct inet_sock {scalar_t__ inet_dport; } ;
struct in6_addr {int dummy; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_2__ {unsigned short udp_port_hash; } ;

/* Variables and functions */
 scalar_t__ PF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct in6_addr const*,struct in6_addr const*) ; 
 struct inet_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 TYPE_1__* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static bool FUNC8(struct net *net, struct sock *sk,
				   __be16 loc_port, const struct in6_addr *loc_addr,
				   __be16 rmt_port, const struct in6_addr *rmt_addr,
				   int dif, int sdif, unsigned short hnum)
{
	struct inet_sock *inet = FUNC1(sk);

	if (!FUNC4(FUNC5(sk), net))
		return false;

	if (FUNC6(sk)->udp_port_hash != hnum ||
	    sk->sk_family != PF_INET6 ||
	    (inet->inet_dport && inet->inet_dport != rmt_port) ||
	    (!FUNC2(&sk->sk_v6_daddr) &&
		    !FUNC3(&sk->sk_v6_daddr, rmt_addr)) ||
	    !FUNC7(net, sk->sk_bound_dev_if, dif, sdif) ||
	    (!FUNC2(&sk->sk_v6_rcv_saddr) &&
		    !FUNC3(&sk->sk_v6_rcv_saddr, loc_addr)))
		return false;
	if (!FUNC0(sk, loc_addr, rmt_addr))
		return false;
	return true;
}