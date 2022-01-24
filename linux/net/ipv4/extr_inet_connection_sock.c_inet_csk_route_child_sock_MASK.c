#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_uid; int /*<<< orphan*/  sk_protocol; } ;
struct dst_entry {int dummy; } ;
struct rtable {struct dst_entry dst; scalar_t__ rt_uses_gateway; } ;
struct request_sock {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_8__ {scalar_t__ is_strictroute; int /*<<< orphan*/  faddr; scalar_t__ srr; } ;
struct ip_options_rcu {TYPE_4__ opt; } ;
struct flowi4 {int dummy; } ;
struct TYPE_5__ {struct flowi4 ip4; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
struct TYPE_7__ {TYPE_2__ fl; } ;
struct inet_sock {TYPE_3__ cork; } ;
struct inet_request_sock {int /*<<< orphan*/  ir_num; int /*<<< orphan*/  ir_rmt_port; int /*<<< orphan*/  ir_loc_addr; int /*<<< orphan*/  ir_rmt_addr; int /*<<< orphan*/  ir_mark; int /*<<< orphan*/  ir_iif; int /*<<< orphan*/  ireq_opt; int /*<<< orphan*/  ireq_net; } ;

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
 struct inet_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock const*) ; 
 struct rtable* FUNC9 (struct net*,struct flowi4*,struct sock const*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtable*) ; 
 struct ip_options_rcu* FUNC11 (int /*<<< orphan*/ ) ; 
 struct net* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct request_sock const*,int /*<<< orphan*/ ) ; 

struct dst_entry *FUNC14(const struct sock *sk,
					    struct sock *newsk,
					    const struct request_sock *req)
{
	const struct inet_request_sock *ireq = FUNC6(req);
	struct net *net = FUNC12(&ireq->ireq_net);
	struct inet_sock *newinet = FUNC7(newsk);
	struct ip_options_rcu *opt;
	struct flowi4 *fl4;
	struct rtable *rt;

	opt = FUNC11(ireq->ireq_opt);
	fl4 = &newinet->cork.fl.u.ip4;

	FUNC3(fl4, ireq->ir_iif, ireq->ir_mark,
			   FUNC1(sk), RT_SCOPE_UNIVERSE,
			   sk->sk_protocol, FUNC8(sk),
			   (opt && opt->opt.srr) ? opt->opt.faddr : ireq->ir_rmt_addr,
			   ireq->ir_loc_addr, ireq->ir_rmt_port,
			   FUNC5(ireq->ir_num), sk->sk_uid);
	FUNC13(req, FUNC4(fl4));
	rt = FUNC9(net, fl4, sk);
	if (FUNC0(rt))
		goto no_route;
	if (opt && opt->opt.is_strictroute && rt->rt_uses_gateway)
		goto route_err;
	return &rt->dst;

route_err:
	FUNC10(rt);
no_route:
	FUNC2(net, IPSTATS_MIB_OUTNOROUTES);
	return NULL;
}