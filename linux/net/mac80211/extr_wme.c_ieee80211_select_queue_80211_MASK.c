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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int priority; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct TYPE_2__ {scalar_t__ queues; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_NUM_ACS ; 
 int IEEE80211_QOS_CTL_TAG1D_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 int* FUNC1 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ieee802_1d_to_ac ; 

u16 FUNC4(struct ieee80211_sub_if_data *sdata,
				 struct sk_buff *skb,
				 struct ieee80211_hdr *hdr)
{
	struct ieee80211_local *local = sdata->local;
	u8 *p;

	if (local->hw.queues < IEEE80211_NUM_ACS)
		return 0;

	if (!FUNC2(hdr->frame_control)) {
		skb->priority = 7;
		return ieee802_1d_to_ac[skb->priority];
	}
	if (!FUNC3(hdr->frame_control)) {
		skb->priority = 0;
		return ieee802_1d_to_ac[skb->priority];
	}

	p = FUNC1(hdr);
	skb->priority = *p & IEEE80211_QOS_CTL_TAG1D_MASK;

	return FUNC0(sdata, NULL, skb);
}