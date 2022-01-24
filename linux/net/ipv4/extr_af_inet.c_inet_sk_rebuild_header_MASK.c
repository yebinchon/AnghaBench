#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sock {scalar_t__ sk_state; int sk_userlocks; int sk_err_soft; scalar_t__ sk_route_caps; int /*<<< orphan*/  sk_bound_dev_if; int /*<<< orphan*/  sk_protocol; } ;
struct rtable {int /*<<< orphan*/  dst; } ;
struct TYPE_8__ {int /*<<< orphan*/  faddr; scalar_t__ srr; } ;
struct ip_options_rcu {TYPE_1__ opt; } ;
struct flowi4 {int dummy; } ;
struct TYPE_9__ {struct flowi4 ip4; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
struct TYPE_11__ {TYPE_3__ fl; } ;
struct inet_sock {int /*<<< orphan*/  inet_sport; int /*<<< orphan*/  inet_dport; int /*<<< orphan*/  inet_saddr; TYPE_4__ cork; int /*<<< orphan*/  inet_daddr; int /*<<< orphan*/  inet_opt; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_12__ {int /*<<< orphan*/  sysctl_ip_dynaddr; } ;
struct TYPE_13__ {TYPE_5__ ipv4; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtable*) ; 
 int FUNC1 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int SOCK_BINDADDR_LOCK ; 
 scalar_t__ TCP_SYN_SENT ; 
 scalar_t__ FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC4 (struct sock*) ; 
 int FUNC5 (struct sock*) ; 
 struct rtable* FUNC6 (TYPE_6__*,struct flowi4*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ip_options_rcu* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC11 (struct sock*) ; 

int FUNC12(struct sock *sk)
{
	struct inet_sock *inet = FUNC4(sk);
	struct rtable *rt = (struct rtable *)FUNC3(sk, 0);
	__be32 daddr;
	struct ip_options_rcu *inet_opt;
	struct flowi4 *fl4;
	int err;

	/* Route is OK, nothing to do. */
	if (rt)
		return 0;

	/* Reroute. */
	FUNC8();
	inet_opt = FUNC7(inet->inet_opt);
	daddr = inet->inet_daddr;
	if (inet_opt && inet_opt->opt.srr)
		daddr = inet_opt->opt.faddr;
	FUNC9();
	fl4 = &inet->cork.fl.u.ip4;
	rt = FUNC6(FUNC11(sk), fl4, sk, daddr, inet->inet_saddr,
				   inet->inet_dport, inet->inet_sport,
				   sk->sk_protocol, FUNC2(sk),
				   sk->sk_bound_dev_if);
	if (!FUNC0(rt)) {
		err = 0;
		FUNC10(sk, &rt->dst);
	} else {
		err = FUNC1(rt);

		/* Routing failed... */
		sk->sk_route_caps = 0;
		/*
		 * Other protocols have to map its equivalent state to TCP_SYN_SENT.
		 * DCCP maps its DCCP_REQUESTING state to TCP_SYN_SENT. -acme
		 */
		if (!FUNC11(sk)->ipv4.sysctl_ip_dynaddr ||
		    sk->sk_state != TCP_SYN_SENT ||
		    (sk->sk_userlocks & SOCK_BINDADDR_LOCK) ||
		    (err = FUNC5(sk)) != 0)
			sk->sk_err_soft = -err;
	}

	return err;
}