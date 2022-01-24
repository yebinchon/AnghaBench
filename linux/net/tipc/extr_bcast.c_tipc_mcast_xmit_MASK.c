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
typedef  int /*<<< orphan*/  u16 ;
struct tipc_nlist {scalar_t__ local; scalar_t__ remote; } ;
struct tipc_msg {int dummy; } ;
struct tipc_mc_method {int rcast; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ MSG_FRAGMENTER ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 struct tipc_msg* FUNC3 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,int) ; 
 scalar_t__ FUNC5 (struct tipc_msg*) ; 
 struct sk_buff* FUNC6 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,scalar_t__,struct tipc_mc_method*) ; 
 int FUNC9 (struct net*,struct sk_buff_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct net*,struct sk_buff*,struct tipc_mc_method*,struct tipc_nlist*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff_head*,struct sk_buff_head*) ; 
 int FUNC13 (struct net*,struct sk_buff_head*,struct tipc_nlist*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct net*,struct sk_buff_head*,struct sk_buff_head*) ; 

int FUNC15(struct net *net, struct sk_buff_head *pkts,
		    struct tipc_mc_method *method, struct tipc_nlist *dests,
		    u16 *cong_link_cnt)
{
	struct sk_buff_head inputq, localq;
	bool rcast = method->rcast;
	struct tipc_msg *hdr;
	struct sk_buff *skb;
	int rc = 0;

	FUNC7(&inputq);
	FUNC0(&localq);

	/* Clone packets before they are consumed by next call */
	if (dests->local && !FUNC12(pkts, &localq)) {
		rc = -ENOMEM;
		goto exit;
	}
	/* Send according to determined transmit method */
	if (dests->remote) {
		FUNC8(net, dests->remote, method);

		skb = FUNC6(pkts);
		hdr = FUNC2(skb);
		if (FUNC5(hdr) == MSG_FRAGMENTER)
			hdr = FUNC3(hdr);
		FUNC4(hdr, method->rcast);

		/* Switch method ? */
		if (rcast != method->rcast)
			FUNC11(net, skb, method,
					     dests, cong_link_cnt);

		if (method->rcast)
			rc = FUNC13(net, pkts, dests, cong_link_cnt);
		else
			rc = FUNC9(net, pkts, cong_link_cnt);
	}

	if (dests->local) {
		FUNC10(net, &localq);
		FUNC14(net, &localq, &inputq);
	}
exit:
	/* This queue should normally be empty by now */
	FUNC1(pkts);
	return rc;
}