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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;

/* Variables and functions */
#define  WLAN_PUB_ACTION_TDLS_DISCOVER_RES 135 
#define  WLAN_TDLS_CHANNEL_SWITCH_REQUEST 134 
#define  WLAN_TDLS_CHANNEL_SWITCH_RESPONSE 133 
#define  WLAN_TDLS_DISCOVERY_REQUEST 132 
#define  WLAN_TDLS_SETUP_CONFIRM 131 
#define  WLAN_TDLS_SETUP_REQUEST 130 
#define  WLAN_TDLS_SETUP_RESPONSE 129 
#define  WLAN_TDLS_TEARDOWN 128 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*,struct sk_buff*,int const*,int,int const*,size_t,int,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,struct sk_buff*,int const*,int /*<<< orphan*/ ,int,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,struct sk_buff*,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,struct sk_buff*,int const*,int,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*,struct sk_buff*,int const*,int,int,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int const*,size_t) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_sub_if_data *sdata,
				   struct sk_buff *skb, const u8 *peer,
				   u8 action_code, u16 status_code,
				   bool initiator, const u8 *extra_ies,
				   size_t extra_ies_len, u8 oper_class,
				   struct cfg80211_chan_def *chandef)
{
	switch (action_code) {
	case WLAN_TDLS_SETUP_REQUEST:
	case WLAN_TDLS_SETUP_RESPONSE:
	case WLAN_PUB_ACTION_TDLS_DISCOVER_RES:
		if (status_code == 0)
			FUNC4(sdata, skb, peer,
							   action_code,
							   initiator,
							   extra_ies,
							   extra_ies_len);
		break;
	case WLAN_TDLS_SETUP_CONFIRM:
		if (status_code == 0)
			FUNC3(sdata, skb, peer,
							 initiator, extra_ies,
							 extra_ies_len);
		break;
	case WLAN_TDLS_TEARDOWN:
	case WLAN_TDLS_DISCOVERY_REQUEST:
		if (extra_ies_len)
			FUNC5(skb, extra_ies, extra_ies_len);
		if (status_code == 0 || action_code == WLAN_TDLS_TEARDOWN)
			FUNC2(sdata, skb, peer, initiator);
		break;
	case WLAN_TDLS_CHANNEL_SWITCH_REQUEST:
		FUNC0(sdata, skb, peer,
						       initiator, extra_ies,
						       extra_ies_len,
						       oper_class, chandef);
		break;
	case WLAN_TDLS_CHANNEL_SWITCH_RESPONSE:
		FUNC1(sdata, skb, peer,
							status_code,
							initiator, extra_ies,
							extra_ies_len);
		break;
	}

}