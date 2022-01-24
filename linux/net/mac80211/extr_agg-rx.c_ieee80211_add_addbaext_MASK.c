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
typedef  scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_supported_band {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;
struct TYPE_4__ {int* mac_cap_info; } ;
struct ieee80211_sta_he_cap {TYPE_2__ he_cap_elem; } ;
struct ieee80211_addba_ext_ie {int data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_ADDBA_EXT_FRAG_LEVEL_MASK ; 
 int IEEE80211_ADDBA_EXT_NO_FRAG ; 
 int /*<<< orphan*/  IEEE80211_HE_MAC_CAP0_DYNAMIC_FRAG_MASK ; 
 int /*<<< orphan*/  WLAN_EID_ADDBA_EXT ; 
 struct ieee80211_sta_he_cap* FUNC0 (struct ieee80211_supported_band*,int /*<<< orphan*/ ) ; 
 struct ieee80211_supported_band* FUNC1 (struct ieee80211_sub_if_data*) ; 
 scalar_t__* FUNC2 (struct sk_buff*,int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_sub_if_data *sdata,
				   struct sk_buff *skb,
				   const struct ieee80211_addba_ext_ie *req)
{
	struct ieee80211_supported_band *sband;
	struct ieee80211_addba_ext_ie *resp;
	const struct ieee80211_sta_he_cap *he_cap;
	u8 frag_level, cap_frag_level;
	u8 *pos;

	sband = FUNC1(sdata);
	if (!sband)
		return;
	he_cap = FUNC0(sband, sdata->vif.type);
	if (!he_cap)
		return;

	pos = FUNC2(skb, 2 + sizeof(struct ieee80211_addba_ext_ie));
	*pos++ = WLAN_EID_ADDBA_EXT;
	*pos++ = sizeof(struct ieee80211_addba_ext_ie);
	resp = (struct ieee80211_addba_ext_ie *)pos;
	resp->data = req->data & IEEE80211_ADDBA_EXT_NO_FRAG;

	frag_level = FUNC3(req->data,
				  IEEE80211_ADDBA_EXT_FRAG_LEVEL_MASK);
	cap_frag_level = FUNC3(he_cap->he_cap_elem.mac_cap_info[0],
				      IEEE80211_HE_MAC_CAP0_DYNAMIC_FRAG_MASK);
	if (frag_level > cap_frag_level)
		frag_level = cap_frag_level;
	resp->data |= FUNC4(frag_level,
				     IEEE80211_ADDBA_EXT_FRAG_LEVEL_MASK);
}