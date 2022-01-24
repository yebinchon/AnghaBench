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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct wiphy {int dummy; } ;
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  protocol; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  const* addr; } ;
struct ieee80211_sub_if_data {scalar_t__ control_port_protocol; TYPE_2__ vif; struct ieee80211_local* local; } ;
struct TYPE_3__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ethhdr {scalar_t__ h_proto; int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_dest; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_802_3 ; 
 int /*<<< orphan*/  ETH_P_PREAUTH ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 scalar_t__ IEEE80211_TX_INTFL_DONT_ENCRYPT ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct ethhdr* FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 

int FUNC13(struct wiphy *wiphy, struct net_device *dev,
			      const u8 *buf, size_t len,
			      const u8 *dest, __be16 proto, bool unencrypted)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = sdata->local;
	struct sk_buff *skb;
	struct ethhdr *ehdr;
	u32 flags;

	/* Only accept CONTROL_PORT_PROTOCOL configured in CONNECT/ASSOCIATE
	 * or Pre-Authentication
	 */
	if (proto != sdata->control_port_protocol &&
	    proto != FUNC2(ETH_P_PREAUTH))
		return -EINVAL;

	if (unencrypted)
		flags = IEEE80211_TX_INTFL_DONT_ENCRYPT;
	else
		flags = 0;

	skb = FUNC3(local->hw.extra_tx_headroom +
			    sizeof(struct ethhdr) + len);
	if (!skb)
		return -ENOMEM;

	FUNC10(skb, local->hw.extra_tx_headroom + sizeof(struct ethhdr));

	FUNC9(skb, buf, len);

	ehdr = FUNC8(skb, sizeof(struct ethhdr));
	FUNC7(ehdr->h_dest, dest, ETH_ALEN);
	FUNC7(ehdr->h_source, sdata->vif.addr, ETH_ALEN);
	ehdr->h_proto = proto;

	skb->dev = dev;
	skb->protocol = FUNC4(ETH_P_802_3);
	FUNC12(skb);
	FUNC11(skb);

	FUNC5();
	FUNC1(skb, skb->dev, flags, 0);
	FUNC6();

	return 0;
}