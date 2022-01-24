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
struct sock {int /*<<< orphan*/  sk_bound_dev_if; int /*<<< orphan*/  sk_protocol; } ;
struct dst_entry {TYPE_1__* ops; int /*<<< orphan*/  obsolete; } ;
struct rtable {struct dst_entry dst; } ;
struct TYPE_4__ {int /*<<< orphan*/  faddr; scalar_t__ srr; } ;
struct ip_options_rcu {TYPE_2__ opt; } ;
struct inet_sock {int /*<<< orphan*/  inet_sport; int /*<<< orphan*/  inet_dport; int /*<<< orphan*/  inet_saddr; int /*<<< orphan*/  inet_opt; int /*<<< orphan*/  inet_daddr; } ;
struct flowi4 {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {scalar_t__ (* check ) (struct dst_entry*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct dst_entry* FUNC2 (struct sock*) ; 
 struct inet_sock* FUNC3 (struct sock*) ; 
 struct rtable* FUNC4 (int /*<<< orphan*/ ,struct flowi4*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ip_options_rcu* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 scalar_t__ FUNC10 (struct dst_entry*,int /*<<< orphan*/ ) ; 

void FUNC11(struct sock *sk)
{
	const struct inet_sock *inet = FUNC3(sk);
	const struct ip_options_rcu *inet_opt;
	__be32 daddr = inet->inet_daddr;
	struct dst_entry *dst;
	struct flowi4 fl4;
	struct rtable *rt;

	FUNC6();

	dst = FUNC2(sk);
	if (!dst || !dst->obsolete || dst->ops->check(dst, 0)) {
		FUNC7();
		return;
	}
	inet_opt = FUNC5(inet->inet_opt);
	if (inet_opt && inet_opt->opt.srr)
		daddr = inet_opt->opt.faddr;
	rt = FUNC4(FUNC9(sk), &fl4, sk, daddr,
				   inet->inet_saddr, inet->inet_dport,
				   inet->inet_sport, sk->sk_protocol,
				   FUNC1(sk), sk->sk_bound_dev_if);

	dst = !FUNC0(rt) ? &rt->dst : NULL;
	FUNC8(sk, dst);

	FUNC7();
}