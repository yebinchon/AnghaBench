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
typedef  scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int GROUP_PROTOCOL ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 scalar_t__ TIPC_CLUSTER_SCOPE ; 
 int TIPC_GRP_UCAST_MSG ; 
 scalar_t__ TIPC_NODE_SCOPE ; 
 struct sk_buff* FUNC1 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff_head*,struct sk_buff*) ; 
 struct tipc_msg* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct tipc_msg*) ; 
 scalar_t__ FUNC9 (struct tipc_msg*) ; 
 scalar_t__ FUNC10 (struct tipc_msg*) ; 
 scalar_t__ FUNC11 (struct tipc_msg*) ; 
 scalar_t__ FUNC12 (struct tipc_msg*) ; 
 scalar_t__ FUNC13 (struct tipc_msg*) ; 
 scalar_t__ FUNC14 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_msg*,scalar_t__) ; 
 int FUNC16 (struct tipc_msg*) ; 
 int FUNC17 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int FUNC19 (struct sk_buff*) ; 
 struct sk_buff* FUNC20 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff_head*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (struct list_head*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC25 (struct net*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,struct list_head*) ; 
 scalar_t__ FUNC26 (struct net*) ; 
 int /*<<< orphan*/  FUNC27 (struct net*,struct sk_buff_head*) ; 
 struct sk_buff* FUNC28 (struct sk_buff_head*,int /*<<< orphan*/ *) ; 

void FUNC29(struct net *net, struct sk_buff_head *arrvq,
		       struct sk_buff_head *inputq)
{
	u32 self = FUNC26(net);
	u32 type, lower, upper, scope;
	struct sk_buff *skb, *_skb;
	u32 portid, onode;
	struct sk_buff_head tmpq;
	struct list_head dports;
	struct tipc_msg *hdr;
	int user, mtyp, hlen;
	bool exact;

	FUNC3(&tmpq);
	FUNC0(&dports);

	skb = FUNC28(arrvq, &inputq->lock);
	for (; skb; skb = FUNC28(arrvq, &inputq->lock)) {
		hdr = FUNC6(skb);
		user = FUNC17(hdr);
		mtyp = FUNC16(hdr);
		hlen = FUNC19(skb) + FUNC8(hdr);
		onode = FUNC14(hdr);
		type = FUNC12(hdr);

		if (mtyp == TIPC_GRP_UCAST_MSG || user == GROUP_PROTOCOL) {
			FUNC22(&inputq->lock);
			if (FUNC20(arrvq) == skb) {
				FUNC2(arrvq);
				FUNC5(inputq, skb);
			}
			FUNC7(skb);
			FUNC23(&inputq->lock);
			continue;
		}

		/* Group messages require exact scope match */
		if (FUNC9(hdr)) {
			lower = 0;
			upper = ~0;
			scope = FUNC10(hdr);
			exact = true;
		} else {
			/* TIPC_NODE_SCOPE means "any scope" in this context */
			if (onode == self)
				scope = TIPC_NODE_SCOPE;
			else
				scope = TIPC_CLUSTER_SCOPE;
			exact = false;
			lower = FUNC11(hdr);
			upper = FUNC13(hdr);
		}

		/* Create destination port list: */
		FUNC25(net, type, lower, upper,
				       scope, exact, &dports);

		/* Clone message per destination */
		while (FUNC24(&dports, NULL, &portid)) {
			_skb = FUNC1(skb, hlen, GFP_ATOMIC);
			if (_skb) {
				FUNC15(FUNC6(_skb), portid);
				FUNC5(&tmpq, _skb);
				continue;
			}
			FUNC18("Failed to clone mcast rcv buffer\n");
		}
		/* Append to inputq if not already done by other thread */
		FUNC22(&inputq->lock);
		if (FUNC20(arrvq) == skb) {
			FUNC21(&tmpq, inputq);
			FUNC7(FUNC2(arrvq));
		}
		FUNC23(&inputq->lock);
		FUNC4(&tmpq);
		FUNC7(skb);
	}
	FUNC27(net, inputq);
}