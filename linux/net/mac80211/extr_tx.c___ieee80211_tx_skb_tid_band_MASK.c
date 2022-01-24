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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int priority; int /*<<< orphan*/  dev; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  dev; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_2__ {int band; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

void FUNC7(struct ieee80211_sub_if_data *sdata,
				 struct sk_buff *skb, int tid,
				 enum nl80211_band band, u32 txdata_flags)
{
	int ac = FUNC1(tid);

	FUNC5(skb);
	FUNC6(skb, ac);
	skb->priority = tid;

	skb->dev = sdata->dev;

	/*
	 * The other path calling ieee80211_xmit is from the tasklet,
	 * and while we can handle concurrent transmissions locking
	 * requirements are that we do not come into tx with bhs on.
	 */
	FUNC3();
	FUNC0(skb)->band = band;
	FUNC2(sdata, NULL, skb, txdata_flags);
	FUNC4();
}