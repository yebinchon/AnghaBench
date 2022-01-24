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
struct sk_buff {scalar_t__ data; } ;
struct probe_resp {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_if_ap {int /*<<< orphan*/  probe_resp; } ;
struct TYPE_4__ {struct ieee80211_if_ap ap; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; TYPE_1__ vif; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; } ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_AP ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct probe_resp* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211_sub_if_data* FUNC6 (struct ieee80211_vif*) ; 

struct sk_buff *FUNC7(struct ieee80211_hw *hw,
					struct ieee80211_vif *vif)
{
	struct ieee80211_if_ap *ap = NULL;
	struct sk_buff *skb = NULL;
	struct probe_resp *presp = NULL;
	struct ieee80211_hdr *hdr;
	struct ieee80211_sub_if_data *sdata = FUNC6(vif);

	if (sdata->vif.type != NL80211_IFTYPE_AP)
		return NULL;

	FUNC3();

	ap = &sdata->u.ap;
	presp = FUNC2(ap->probe_resp);
	if (!presp)
		goto out;

	skb = FUNC0(presp->len);
	if (!skb)
		goto out;

	FUNC5(skb, presp->data, presp->len);

	hdr = (struct ieee80211_hdr *) skb->data;
	FUNC1(hdr->addr1, 0, sizeof(hdr->addr1));

out:
	FUNC4();
	return skb;
}