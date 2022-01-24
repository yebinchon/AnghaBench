#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int tci; int tpid; } ;
struct TYPE_6__ {int type; TYPE_2__ cvlan; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_4__ {scalar_t__ flags; } ;
struct sw_flow_key {TYPE_3__ eth; TYPE_1__ tp; } ;
struct sk_buff {int protocol; scalar_t__ data; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 scalar_t__ MAC_PROTO_NONE ; 
 int /*<<< orphan*/  VLAN_CFI_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sw_flow_key*) ; 
 struct ethhdr* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sk_buff*,struct sw_flow_key*) ; 
 scalar_t__ FUNC8 (struct sw_flow_key*) ; 
 int FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*,struct sw_flow_key*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *skb, struct sw_flow_key *key)
{
	struct ethhdr *eth;

	/* Flags are always used as part of stats */
	key->tp.flags = 0;

	FUNC12(skb);

	/* Link layer. */
	FUNC2(key);
	if (FUNC8(key) == MAC_PROTO_NONE) {
		if (FUNC15(FUNC4(skb->protocol)))
			return -EINVAL;

		FUNC14(skb);
		key->eth.type = skb->protocol;
	} else {
		eth = FUNC3(skb);
		FUNC5(key->eth.src, eth->h_source);
		FUNC5(key->eth.dst, eth->h_dest);

		FUNC0(skb, 2 * ETH_ALEN);
		/* We are going to push all headers that we pull, so no need to
		 * update skb->csum here.
		 */

		if (FUNC15(FUNC10(skb, key)))
			return -ENOMEM;

		key->eth.type = FUNC9(skb);
		if (FUNC15(key->eth.type == FUNC6(0)))
			return -ENOMEM;

		/* Multiple tagged packets need to retain TPID to satisfy
		 * skb_vlan_pop(), which will later shift the ethertype into
		 * skb->protocol.
		 */
		if (key->eth.cvlan.tci & FUNC6(VLAN_CFI_MASK))
			skb->protocol = key->eth.cvlan.tpid;
		else
			skb->protocol = key->eth.type;

		FUNC14(skb);
		FUNC1(skb, skb->data - FUNC11(skb));
	}

	FUNC13(skb);

	/* Fill out L3/L4 key info, if any */
	return FUNC7(skb, key);
}