#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {void* ip_summed; } ;
struct mrt6msg {int im6_msgtype; int /*<<< orphan*/  im6_dst; int /*<<< orphan*/  im6_src; scalar_t__ im6_pad; int /*<<< orphan*/  im6_mif; scalar_t__ im6_mbz; } ;
struct mr_table {int /*<<< orphan*/  mroute_sk; int /*<<< orphan*/  mroute_reg_vif_num; } ;
struct ipv6hdr {int dummy; } ;
typedef  int /*<<< orphan*/  mifi_t ;
struct TYPE_3__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 void* CHECKSUM_UNNECESSARY ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MRT6MSG_WHOLEPKT ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct mr_table*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct sock* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (struct sk_buff*) ; 
 int FUNC19 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC20(struct mr_table *mrt, struct sk_buff *pkt,
			      mifi_t mifi, int assert)
{
	struct sock *mroute6_sk;
	struct sk_buff *skb;
	struct mrt6msg *msg;
	int ret;

#ifdef CONFIG_IPV6_PIMSM_V2
	if (assert == MRT6MSG_WHOLEPKT)
		skb = skb_realloc_headroom(pkt, -skb_network_offset(pkt)
						+sizeof(*msg));
	else
#endif
		skb = FUNC0(sizeof(struct ipv6hdr) + sizeof(*msg), GFP_ATOMIC);

	if (!skb)
		return -ENOBUFS;

	/* I suppose that internal messages
	 * do not require checksums */

	skb->ip_summed = CHECKSUM_UNNECESSARY;

#ifdef CONFIG_IPV6_PIMSM_V2
	if (assert == MRT6MSG_WHOLEPKT) {
		/* Ugly, but we have no choice with this interface.
		   Duplicate old header, fix length etc.
		   And all this only to mangle msg->im6_msgtype and
		   to set msg->im6_mbz to "mbz" :-)
		 */
		skb_push(skb, -skb_network_offset(pkt));

		skb_push(skb, sizeof(*msg));
		skb_reset_transport_header(skb);
		msg = (struct mrt6msg *)skb_transport_header(skb);
		msg->im6_mbz = 0;
		msg->im6_msgtype = MRT6MSG_WHOLEPKT;
		msg->im6_mif = mrt->mroute_reg_vif_num;
		msg->im6_pad = 0;
		msg->im6_src = ipv6_hdr(pkt)->saddr;
		msg->im6_dst = ipv6_hdr(pkt)->daddr;

		skb->ip_summed = CHECKSUM_UNNECESSARY;
	} else
#endif
	{
	/*
	 *	Copy the IP header
	 */

	FUNC14(skb, sizeof(struct ipv6hdr));
	FUNC16(skb);
	FUNC9(skb, FUNC2(pkt), sizeof(struct ipv6hdr));

	/*
	 *	Add our header
	 */
	FUNC14(skb, sizeof(*msg));
	FUNC17(skb);
	msg = (struct mrt6msg *)FUNC18(skb);

	msg->im6_mbz = 0;
	msg->im6_msgtype = assert;
	msg->im6_mif = mifi;
	msg->im6_pad = 0;
	msg->im6_src = FUNC2(pkt)->saddr;
	msg->im6_dst = FUNC2(pkt)->daddr;

	FUNC11(skb, FUNC1(FUNC10(pkt)));
	skb->ip_summed = CHECKSUM_UNNECESSARY;
	}

	FUNC7();
	mroute6_sk = FUNC6(mrt->mroute_sk);
	if (!mroute6_sk) {
		FUNC8();
		FUNC3(skb);
		return -EINVAL;
	}

	FUNC4(mrt, skb);

	/* Deliver to user space multicast routing algorithms */
	ret = FUNC19(mroute6_sk, skb);
	FUNC8();
	if (ret < 0) {
		FUNC5("mroute6: pending queue full, dropping entries\n");
		FUNC3(skb);
	}

	return ret;
}