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
struct wiphy {int bss_select_support; } ;
struct nlattr {int dummy; } ;
struct nl80211_bss_select_rssi_adjust {int /*<<< orphan*/  delta; int /*<<< orphan*/  band; } ;
struct TYPE_3__ {int /*<<< orphan*/  band; int /*<<< orphan*/  delta; } ;
struct TYPE_4__ {TYPE_1__ adjust; int /*<<< orphan*/  band_pref; } ;
struct cfg80211_bss_selection {size_t behaviour; TYPE_2__ param; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int EINVAL ; 
 size_t NL80211_BSS_SELECT_ATTR_BAND_PREF ; 
 int NL80211_BSS_SELECT_ATTR_MAX ; 
 size_t NL80211_BSS_SELECT_ATTR_RSSI ; 
 size_t NL80211_BSS_SELECT_ATTR_RSSI_ADJUST ; 
 size_t __NL80211_BSS_SELECT_ATTR_INVALID ; 
 int /*<<< orphan*/  FUNC1 (struct wiphy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_bss_select_policy ; 
 void* FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nlattr**,int,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct nlattr *nla, struct wiphy *wiphy,
			    struct cfg80211_bss_selection *bss_select)
{
	struct nlattr *attr[NL80211_BSS_SELECT_ATTR_MAX + 1];
	struct nlattr *nest;
	int err;
	bool found = false;
	int i;

	/* only process one nested attribute */
	nest = FUNC2(nla);
	if (!FUNC5(nest, FUNC4(nest)))
		return -EINVAL;

	err = FUNC6(attr, NL80211_BSS_SELECT_ATTR_MAX,
					  nest, nl80211_bss_select_policy,
					  NULL);
	if (err)
		return err;

	/* only one attribute may be given */
	for (i = 0; i <= NL80211_BSS_SELECT_ATTR_MAX; i++) {
		if (attr[i]) {
			if (found)
				return -EINVAL;
			found = true;
		}
	}

	bss_select->behaviour = __NL80211_BSS_SELECT_ATTR_INVALID;

	if (attr[NL80211_BSS_SELECT_ATTR_RSSI])
		bss_select->behaviour = NL80211_BSS_SELECT_ATTR_RSSI;

	if (attr[NL80211_BSS_SELECT_ATTR_BAND_PREF]) {
		bss_select->behaviour = NL80211_BSS_SELECT_ATTR_BAND_PREF;
		bss_select->param.band_pref =
			FUNC3(attr[NL80211_BSS_SELECT_ATTR_BAND_PREF]);
		if (!FUNC1(wiphy, bss_select->param.band_pref))
			return -EINVAL;
	}

	if (attr[NL80211_BSS_SELECT_ATTR_RSSI_ADJUST]) {
		struct nl80211_bss_select_rssi_adjust *adj_param;

		adj_param = FUNC2(attr[NL80211_BSS_SELECT_ATTR_RSSI_ADJUST]);
		bss_select->behaviour = NL80211_BSS_SELECT_ATTR_RSSI_ADJUST;
		bss_select->param.adjust.band = adj_param->band;
		bss_select->param.adjust.delta = adj_param->delta;
		if (!FUNC1(wiphy, bss_select->param.adjust.band))
			return -EINVAL;
	}

	/* user-space did not provide behaviour attribute */
	if (bss_select->behaviour == __NL80211_BSS_SELECT_ATTR_INVALID)
		return -EINVAL;

	if (!(wiphy->bss_select_support & FUNC0(bss_select->behaviour)))
		return -EINVAL;

	return 0;
}