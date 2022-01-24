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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  teardown_lock; struct sk_buff* orig_teardown_skb; struct sk_buff* teardown_skb; } ;
struct TYPE_4__ {TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int IEEE80211_TX_STAT_ACK ; 
 int /*<<< orphan*/  REPORTS_TX_ACK_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,char*) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_local *local,
					struct ieee80211_sub_if_data *sdata,
					struct sk_buff *skb, u32 flags)
{
	struct sk_buff *teardown_skb;
	struct sk_buff *orig_teardown_skb;
	bool is_teardown = false;

	/* Get the teardown data we need and free the lock */
	FUNC4(&sdata->u.mgd.teardown_lock);
	teardown_skb = sdata->u.mgd.teardown_skb;
	orig_teardown_skb = sdata->u.mgd.orig_teardown_skb;
	if ((skb == orig_teardown_skb) && teardown_skb) {
		sdata->u.mgd.teardown_skb = NULL;
		sdata->u.mgd.orig_teardown_skb = NULL;
		is_teardown = true;
	}
	FUNC5(&sdata->u.mgd.teardown_lock);

	if (is_teardown) {
		/* This mechanism relies on being able to get ACKs */
		FUNC0(!FUNC2(&local->hw, REPORTS_TX_ACK_STATUS));

		/* Check if peer has ACKed */
		if (flags & IEEE80211_TX_STAT_ACK) {
			FUNC1(teardown_skb);
		} else {
			FUNC6(sdata,
				 "TDLS Resending teardown through AP\n");

			FUNC3(teardown_skb, skb->dev);
		}
	}
}