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
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  vif; } ;
struct ieee80211_pspoll {int /*<<< orphan*/  frame_control; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_FCTL_PM ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_INTFL_DONT_ENCRYPT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 

void FUNC4(struct ieee80211_local *local,
			   struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_pspoll *pspoll;
	struct sk_buff *skb;

	skb = FUNC2(&local->hw, &sdata->vif);
	if (!skb)
		return;

	pspoll = (struct ieee80211_pspoll *) skb->data;
	pspoll->frame_control |= FUNC1(IEEE80211_FCTL_PM);

	FUNC0(skb)->flags |= IEEE80211_TX_INTFL_DONT_ENCRYPT;
	FUNC3(sdata, skb);
}