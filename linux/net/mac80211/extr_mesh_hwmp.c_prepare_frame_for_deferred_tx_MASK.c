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
struct sk_buff {int priority; scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/ * vif; } ;
struct ieee80211_tx_info {int /*<<< orphan*/  flags; TYPE_1__ control; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  vif; } ;
struct ieee80211_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_AC_VO ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_INTFL_NEED_TXPROCESSING ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_sub_if_data *sdata,
		struct sk_buff *skb)
{
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;

	FUNC3(skb);
	FUNC4(skb);
	FUNC5(skb);

	/* Send all internal mgmt frames on VO. Accordingly set TID to 7. */
	FUNC6(skb, IEEE80211_AC_VO);
	skb->priority = 7;

	info->control.vif = &sdata->vif;
	info->flags |= IEEE80211_TX_INTFL_NEED_TXPROCESSING;
	FUNC2(sdata, skb);
	FUNC1(sdata, NULL, hdr);
}