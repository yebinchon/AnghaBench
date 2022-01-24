#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_omem_alloc; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {TYPE_1__ imr_multiaddr; int /*<<< orphan*/  imr_ifindex; } ;
struct ip_mc_socklist {TYPE_2__ multi; scalar_t__ next_rcu; } ;
struct inet_sock {scalar_t__ mc_list; } ;
struct in_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 struct inet_sock* FUNC1 (struct sock*) ; 
 struct in_device* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct in_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct ip_mc_socklist*,struct in_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ip_mc_socklist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 struct ip_mc_socklist* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct net* FUNC9 (struct sock*) ; 

void FUNC10(struct sock *sk)
{
	struct inet_sock *inet = FUNC1(sk);
	struct ip_mc_socklist *iml;
	struct net *net = FUNC9(sk);

	if (!inet->mc_list)
		return;

	FUNC7();
	while ((iml = FUNC6(inet->mc_list)) != NULL) {
		struct in_device *in_dev;

		inet->mc_list = iml->next_rcu;
		in_dev = FUNC2(net, iml->multi.imr_ifindex);
		(void) FUNC4(sk, iml, in_dev);
		if (in_dev)
			FUNC3(in_dev, iml->multi.imr_multiaddr.s_addr);
		/* decrease mem now to avoid the memleak warning */
		FUNC0(sizeof(*iml), &sk->sk_omem_alloc);
		FUNC5(iml, rcu);
	}
	FUNC8();
}