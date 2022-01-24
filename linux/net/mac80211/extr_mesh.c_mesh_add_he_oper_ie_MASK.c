#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_supported_band {int dummy; } ;
struct TYPE_4__ {scalar_t__ width; } ;
struct TYPE_5__ {TYPE_1__ chandef; } ;
struct TYPE_6__ {TYPE_2__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_3__ vif; } ;
struct ieee80211_sta_he_cap {int dummy; } ;
struct ieee80211_he_operation {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ NL80211_CHAN_WIDTH_10 ; 
 scalar_t__ NL80211_CHAN_WIDTH_20_NOHT ; 
 scalar_t__ NL80211_CHAN_WIDTH_5 ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MESH_POINT ; 
 struct ieee80211_sta_he_cap* FUNC0 (struct ieee80211_supported_band*,int /*<<< orphan*/ ) ; 
 struct ieee80211_supported_band* FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct sk_buff*,int) ; 
 int FUNC4 (struct sk_buff*) ; 

int FUNC5(struct ieee80211_sub_if_data *sdata,
			struct sk_buff *skb)
{
	const struct ieee80211_sta_he_cap *he_cap;
	struct ieee80211_supported_band *sband;
	u8 *pos;

	sband = FUNC1(sdata);
	if (!sband)
		return -EINVAL;

	he_cap = FUNC0(sband, NL80211_IFTYPE_MESH_POINT);
	if (!he_cap ||
	    sdata->vif.bss_conf.chandef.width == NL80211_CHAN_WIDTH_20_NOHT ||
	    sdata->vif.bss_conf.chandef.width == NL80211_CHAN_WIDTH_5 ||
	    sdata->vif.bss_conf.chandef.width == NL80211_CHAN_WIDTH_10)
		return 0;

	if (FUNC4(skb) < 2 + 1 + sizeof(struct ieee80211_he_operation))
		return -ENOMEM;

	pos = FUNC3(skb, 2 + 1 + sizeof(struct ieee80211_he_operation));
	FUNC2(pos);

	return 0;
}