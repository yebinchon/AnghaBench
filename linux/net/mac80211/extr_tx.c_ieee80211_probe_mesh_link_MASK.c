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
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int dummy; } ;
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  protocol; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct TYPE_2__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_P_802_3 ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  IEEE80211_TX_CTRL_SKIP_MPATH_LOOKUP ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 

int FUNC10(struct wiphy *wiphy, struct net_device *dev,
			      const u8 *buf, size_t len)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = sdata->local;
	struct sk_buff *skb;

	skb = FUNC2(local->hw.extra_tx_headroom + len +
			    30 + /* header size */
			    18); /* 11s header size */
	if (!skb)
		return -ENOMEM;

	FUNC7(skb, local->hw.extra_tx_headroom);
	FUNC6(skb, buf, len);

	skb->dev = dev;
	skb->protocol = FUNC3(ETH_P_802_3);
	FUNC9(skb);
	FUNC8(skb);

	FUNC4();
	FUNC1(skb, skb->dev, 0,
				     IEEE80211_TX_CTRL_SKIP_MPATH_LOOKUP);
	FUNC5();

	return 0;
}