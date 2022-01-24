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
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  cb; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {scalar_t__ control_port_protocol; scalar_t__ control_port_over_nl80211; struct net_device* dev; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_rx_data {scalar_t__ napi; struct ieee80211_sub_if_data* sdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_PREAUTH ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int RX_FLAG_DECRYPTED ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct sk_buff*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct sk_buff *skb,
						 struct ieee80211_rx_data *rx)
{
	struct ieee80211_sub_if_data *sdata = rx->sdata;
	struct net_device *dev = sdata->dev;

	if (FUNC7((skb->protocol == sdata->control_port_protocol ||
		      skb->protocol == FUNC2(ETH_P_PREAUTH)) &&
		     sdata->control_port_over_nl80211)) {
		struct ieee80211_rx_status *status = FUNC0(skb);
		bool noencrypt = !(status->flag & RX_FLAG_DECRYPTED);

		FUNC1(dev, skb, noencrypt);
		FUNC3(skb);
	} else {
		FUNC4(skb->cb, 0, sizeof(skb->cb));

		/* deliver to local stack */
		if (rx->napi)
			FUNC5(rx->napi, skb);
		else
			FUNC6(skb);
	}
}