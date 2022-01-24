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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {unsigned int aggr_len; int /*<<< orphan*/  aggr_list; int /*<<< orphan*/  aggr_list_lock; } ;
struct batadv_hard_iface {TYPE_1__ bat_v; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_hard_iface*) ; 
 unsigned int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC10(struct batadv_hard_iface *hard_iface)
{
	unsigned int aggr_len = hard_iface->bat_v.aggr_len;
	struct sk_buff *skb_aggr;
	unsigned int ogm_len;
	struct sk_buff *skb;

	FUNC5(&hard_iface->bat_v.aggr_list_lock);

	if (!aggr_len)
		return;

	skb_aggr = FUNC4(aggr_len + ETH_HLEN + NET_IP_ALIGN);
	if (!skb_aggr) {
		FUNC0(hard_iface);
		return;
	}

	FUNC8(skb_aggr, ETH_HLEN + NET_IP_ALIGN);
	FUNC9(skb_aggr);

	while ((skb = FUNC6(&hard_iface->bat_v.aggr_list))) {
		hard_iface->bat_v.aggr_len -= FUNC1(skb);

		ogm_len = FUNC1(skb);
		FUNC7(skb_aggr, skb->data, ogm_len);

		FUNC3(skb);
	}

	FUNC2(skb_aggr, hard_iface);
}