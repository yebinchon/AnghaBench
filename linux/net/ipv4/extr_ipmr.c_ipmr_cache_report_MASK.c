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
typedef  void* vifi_t ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  network_header; int /*<<< orphan*/  transport_header; scalar_t__ len; int /*<<< orphan*/  data; } ;
struct mr_table {int /*<<< orphan*/  mroute_sk; void* mroute_reg_vif_num; } ;
struct iphdr {int dummy; } ;
struct igmpmsg {int im_msgtype; void* im_vif; scalar_t__ im_mbz; } ;
struct igmphdr {int type; scalar_t__ code; } ;
struct TYPE_2__ {int ihl; void* tot_len; scalar_t__ protocol; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IGMPMSG_WHOLEPKT ; 
 int IGMPMSG_WRVIFWHOLE ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mr_table*,struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct igmpmsg*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (void*) ; 
 struct sock* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 
 struct igmphdr* FUNC18 (struct sk_buff*,int const) ; 
 struct sk_buff* FUNC19 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,scalar_t__) ; 
 int FUNC23 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC24(struct mr_table *mrt,
			     struct sk_buff *pkt, vifi_t vifi, int assert)
{
	const int ihl = FUNC5(pkt);
	struct sock *mroute_sk;
	struct igmphdr *igmp;
	struct igmpmsg *msg;
	struct sk_buff *skb;
	int ret;

	if (assert == IGMPMSG_WHOLEPKT || assert == IGMPMSG_WRVIFWHOLE)
		skb = FUNC19(pkt, sizeof(struct iphdr));
	else
		skb = FUNC0(128, GFP_ATOMIC);

	if (!skb)
		return -ENOBUFS;

	if (assert == IGMPMSG_WHOLEPKT || assert == IGMPMSG_WRVIFWHOLE) {
		/* Ugly, but we have no choice with this interface.
		 * Duplicate old header, fix ihl, length etc.
		 * And all this only to mangle msg->im_msgtype and
		 * to set msg->im_mbz to "mbz" :-)
		 */
		FUNC17(skb, sizeof(struct iphdr));
		FUNC20(skb);
		FUNC21(skb);
		msg = (struct igmpmsg *)FUNC16(skb);
		FUNC7(msg, FUNC16(pkt), sizeof(struct iphdr));
		msg->im_msgtype = assert;
		msg->im_mbz = 0;
		if (assert == IGMPMSG_WRVIFWHOLE)
			msg->im_vif = vifi;
		else
			msg->im_vif = mrt->mroute_reg_vif_num;
		FUNC4(skb)->ihl = sizeof(struct iphdr) >> 2;
		FUNC4(skb)->tot_len = FUNC2(FUNC9(FUNC4(pkt)->tot_len) +
					     sizeof(struct iphdr));
	} else {
		/* Copy the IP header */
		FUNC22(skb, skb->len);
		FUNC18(skb, ihl);
		FUNC13(skb, pkt->data, ihl);
		/* Flag to the kernel this is a route add */
		FUNC4(skb)->protocol = 0;
		msg = (struct igmpmsg *)FUNC16(skb);
		msg->im_vif = vifi;
		FUNC15(skb, FUNC1(FUNC14(pkt)));
		/* Add our header */
		igmp = FUNC18(skb, sizeof(struct igmphdr));
		igmp->type = assert;
		msg->im_msgtype = assert;
		igmp->code = 0;
		FUNC4(skb)->tot_len = FUNC2(skb->len);	/* Fix the length */
		skb->transport_header = skb->network_header;
	}

	FUNC11();
	mroute_sk = FUNC10(mrt->mroute_sk);
	if (!mroute_sk) {
		FUNC12();
		FUNC6(skb);
		return -EINVAL;
	}

	FUNC3(mrt, skb);

	/* Deliver to mrouted */
	ret = FUNC23(mroute_sk, skb);
	FUNC12();
	if (ret < 0) {
		FUNC8("mroute: pending queue full, dropping entries\n");
		FUNC6(skb);
	}

	return ret;
}