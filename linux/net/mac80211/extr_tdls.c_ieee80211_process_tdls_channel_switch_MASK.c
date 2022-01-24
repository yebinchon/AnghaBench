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
struct wiphy {int features; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_tdls_data {int action_code; } ;
struct ieee80211_sub_if_data {TYPE_2__* local; } ;
struct TYPE_3__ {struct wiphy* wiphy; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int NL80211_FEATURE_TDLS_CHANNEL_SWITCH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  WLAN_TDLS_CHANNEL_SWITCH_REQUEST 129 
#define  WLAN_TDLS_CHANNEL_SWITCH_RESPONSE 128 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211_sub_if_data *sdata,
				      struct sk_buff *skb)
{
	struct ieee80211_tdls_data *tf = (void *)skb->data;
	struct wiphy *wiphy = sdata->local->hw.wiphy;

	FUNC0();

	/* make sure the driver supports it */
	if (!(wiphy->features & NL80211_FEATURE_TDLS_CHANNEL_SWITCH))
		return;

	/* we want to access the entire packet */
	if (FUNC4(skb))
		return;
	/*
	 * The packet/size was already validated by mac80211 Rx path, only look
	 * at the action type.
	 */
	switch (tf->action_code) {
	case WLAN_TDLS_CHANNEL_SWITCH_REQUEST:
		FUNC2(sdata, skb);
		break;
	case WLAN_TDLS_CHANNEL_SWITCH_RESPONSE:
		FUNC3(sdata, skb);
		break;
	default:
		FUNC1(1);
		return;
	}
}