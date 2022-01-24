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
typedef  int /*<<< orphan*/  u32 ;
struct sta_info {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_tx_data {struct sk_buff* skb; int /*<<< orphan*/  sta; struct ieee80211_sub_if_data* sdata; int /*<<< orphan*/  local; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  local; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ TX_CONTINUE ; 
 struct sk_buff* FUNC2 (struct ieee80211_sub_if_data*,struct sk_buff*,int /*<<< orphan*/ ,struct sta_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ieee80211_sub_if_data*,struct sk_buff*,struct sta_info**) ; 
 scalar_t__ FUNC4 (struct ieee80211_tx_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 

struct sk_buff *
FUNC9(struct ieee80211_sub_if_data *sdata,
			      struct sk_buff *skb, u32 info_flags)
{
	struct ieee80211_hdr *hdr;
	struct ieee80211_tx_data tx = {
		.local = sdata->local,
		.sdata = sdata,
	};
	struct sta_info *sta;

	FUNC6();

	if (FUNC3(sdata, skb, &sta)) {
		FUNC5(skb);
		skb = FUNC0(-EINVAL);
		goto out;
	}

	skb = FUNC2(sdata, skb, info_flags, sta, 0);
	if (FUNC1(skb))
		goto out;

	hdr = (void *)skb->data;
	tx.sta = FUNC8(sdata, hdr->addr1);
	tx.skb = skb;

	if (FUNC4(&tx) != TX_CONTINUE) {
		FUNC7();
		FUNC5(skb);
		return FUNC0(-EINVAL);
	}

out:
	FUNC7();
	return skb;
}