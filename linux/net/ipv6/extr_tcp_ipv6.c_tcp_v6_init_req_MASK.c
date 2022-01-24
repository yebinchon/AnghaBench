#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_bound_dev_if; } ;
struct sk_buff {int /*<<< orphan*/  users; } ;
struct request_sock {int dummy; } ;
struct TYPE_8__ {scalar_t__ rxohlim; scalar_t__ rxhlim; scalar_t__ rxoinfo; scalar_t__ rxinfo; } ;
struct TYPE_9__ {TYPE_2__ bits; } ;
struct ipv6_pinfo {scalar_t__ repflow; TYPE_3__ rxopt; } ;
struct inet_request_sock {struct sk_buff* pktopts; int /*<<< orphan*/  ir_iif; int /*<<< orphan*/  ir_v6_rmt_addr; int /*<<< orphan*/  ir_v6_loc_addr; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {TYPE_4__ h6; } ;
struct TYPE_12__ {TYPE_1__ header; int /*<<< orphan*/  tcp_tw_isn; } ;
struct TYPE_11__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int IPV6_ADDR_LINKLOCAL ; 
 TYPE_6__* FUNC0 (struct sk_buff*) ; 
 struct inet_request_sock* FUNC1 (struct request_sock*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sock const*,struct sk_buff*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ipv6_pinfo* FUNC7 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct request_sock *req,
			    const struct sock *sk_listener,
			    struct sk_buff *skb)
{
	bool l3_slave = FUNC4(FUNC0(skb)->header.h6.flags);
	struct inet_request_sock *ireq = FUNC1(req);
	const struct ipv6_pinfo *np = FUNC7(sk_listener);

	ireq->ir_v6_rmt_addr = FUNC3(skb)->saddr;
	ireq->ir_v6_loc_addr = FUNC3(skb)->daddr;

	/* So that link locals have meaning */
	if ((!sk_listener->sk_bound_dev_if || l3_slave) &&
	    FUNC2(&ireq->ir_v6_rmt_addr) & IPV6_ADDR_LINKLOCAL)
		ireq->ir_iif = FUNC8(skb);

	if (!FUNC0(skb)->tcp_tw_isn &&
	    (FUNC5(sk_listener, skb, &FUNC0(skb)->header.h6) ||
	     np->rxopt.bits.rxinfo ||
	     np->rxopt.bits.rxoinfo || np->rxopt.bits.rxhlim ||
	     np->rxopt.bits.rxohlim || np->repflow)) {
		FUNC6(&skb->users);
		ireq->pktopts = skb;
	}
}