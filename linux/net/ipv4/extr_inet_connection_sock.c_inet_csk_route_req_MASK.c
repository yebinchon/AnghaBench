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
struct sock {int /*<<< orphan*/  sk_uid; int /*<<< orphan*/  sk_protocol; } ;
struct dst_entry {int dummy; } ;
struct rtable {struct dst_entry dst; scalar_t__ rt_uses_gateway; } ;
struct request_sock {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_strictroute; int /*<<< orphan*/  faddr; scalar_t__ srr; } ;
struct ip_options_rcu {TYPE_1__ opt; } ;
struct inet_request_sock {int /*<<< orphan*/  ir_num; int /*<<< orphan*/  ir_rmt_port; int /*<<< orphan*/  ir_loc_addr; int /*<<< orphan*/  ir_rmt_addr; int /*<<< orphan*/  ir_mark; int /*<<< orphan*/  ir_iif; int /*<<< orphan*/  ireq_opt; int /*<<< orphan*/  ireq_net; } ;
struct flowi4 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPSTATS_MIB_OUTNOROUTES ; 
 scalar_t__ FUNC0 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock const*) ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct flowi4*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct flowi4*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct inet_request_sock* FUNC6 (struct request_sock const*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock const*) ; 
 struct rtable* FUNC8 (struct net*,struct flowi4*,struct sock const*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtable*) ; 
 struct ip_options_rcu* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 struct net* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct request_sock const*,int /*<<< orphan*/ ) ; 

struct dst_entry *FUNC15(const struct sock *sk,
				     struct flowi4 *fl4,
				     const struct request_sock *req)
{
	const struct inet_request_sock *ireq = FUNC6(req);
	struct net *net = FUNC13(&ireq->ireq_net);
	struct ip_options_rcu *opt;
	struct rtable *rt;

	FUNC11();
	opt = FUNC10(ireq->ireq_opt);

	FUNC3(fl4, ireq->ir_iif, ireq->ir_mark,
			   FUNC1(sk), RT_SCOPE_UNIVERSE,
			   sk->sk_protocol, FUNC7(sk),
			   (opt && opt->opt.srr) ? opt->opt.faddr : ireq->ir_rmt_addr,
			   ireq->ir_loc_addr, ireq->ir_rmt_port,
			   FUNC5(ireq->ir_num), sk->sk_uid);
	FUNC14(req, FUNC4(fl4));
	rt = FUNC8(net, fl4, sk);
	if (FUNC0(rt))
		goto no_route;
	if (opt && opt->opt.is_strictroute && rt->rt_uses_gateway)
		goto route_err;
	FUNC12();
	return &rt->dst;

route_err:
	FUNC9(rt);
no_route:
	FUNC12();
	FUNC2(net, IPSTATS_MIB_OUTNOROUTES);
	return NULL;
}