#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  support_p2p_ps; } ;
struct sta_info {int sta_state; TYPE_2__ sta; TYPE_3__* sdata; int /*<<< orphan*/  _flags; int /*<<< orphan*/  assoc_at; int /*<<< orphan*/  local; } ;
typedef  enum ieee80211_sta_state { ____Placeholder_ieee80211_sta_state } ieee80211_sta_state ;
struct TYPE_9__ {int /*<<< orphan*/  type; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; TYPE_1__ vif; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IEEE80211_STA_ASSOC 131 
#define  IEEE80211_STA_AUTH 130 
#define  IEEE80211_STA_AUTHORIZED 129 
#define  IEEE80211_STA_NONE 128 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP_VLAN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  WLAN_STA_ASSOC ; 
 int /*<<< orphan*/  WLAN_STA_AUTH ; 
 int /*<<< orphan*/  WLAN_STA_AUTHORIZED ; 
 int /*<<< orphan*/  WLAN_STA_INSERTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,struct sta_info*,int const,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (struct sta_info*,int /*<<< orphan*/ ) ; 

int FUNC17(struct sta_info *sta,
			enum ieee80211_sta_state new_state)
{
	FUNC13();

	if (sta->sta_state == new_state)
		return 0;

	/* check allowed transitions first */

	switch (new_state) {
	case IEEE80211_STA_NONE:
		if (sta->sta_state != IEEE80211_STA_AUTH)
			return -EINVAL;
		break;
	case IEEE80211_STA_AUTH:
		if (sta->sta_state != IEEE80211_STA_NONE &&
		    sta->sta_state != IEEE80211_STA_ASSOC)
			return -EINVAL;
		break;
	case IEEE80211_STA_ASSOC:
		if (sta->sta_state != IEEE80211_STA_AUTH &&
		    sta->sta_state != IEEE80211_STA_AUTHORIZED)
			return -EINVAL;
		break;
	case IEEE80211_STA_AUTHORIZED:
		if (sta->sta_state != IEEE80211_STA_ASSOC)
			return -EINVAL;
		break;
	default:
		FUNC0(1, "invalid state %d", new_state);
		return -EINVAL;
	}

	FUNC15(sta->sdata, "moving STA %pM to state %d\n",
		sta->sta.addr, new_state);

	/*
	 * notify the driver before the actual changes so it can
	 * fail the transition
	 */
	if (FUNC16(sta, WLAN_STA_INSERTED)) {
		int err = FUNC3(sta->local, sta->sdata, sta,
					sta->sta_state, new_state);
		if (err)
			return err;
	}

	/* reflect the change in all state variables */

	switch (new_state) {
	case IEEE80211_STA_NONE:
		if (sta->sta_state == IEEE80211_STA_AUTH)
			FUNC2(WLAN_STA_AUTH, &sta->_flags);
		break;
	case IEEE80211_STA_AUTH:
		if (sta->sta_state == IEEE80211_STA_NONE) {
			FUNC14(WLAN_STA_AUTH, &sta->_flags);
		} else if (sta->sta_state == IEEE80211_STA_ASSOC) {
			FUNC2(WLAN_STA_ASSOC, &sta->_flags);
			FUNC8(sta->sdata);
			if (!sta->sta.support_p2p_ps)
				FUNC9(sta->sdata);
		}
		break;
	case IEEE80211_STA_ASSOC:
		if (sta->sta_state == IEEE80211_STA_AUTH) {
			FUNC14(WLAN_STA_ASSOC, &sta->_flags);
			sta->assoc_at = FUNC12();
			FUNC8(sta->sdata);
			if (!sta->sta.support_p2p_ps)
				FUNC9(sta->sdata);
		} else if (sta->sta_state == IEEE80211_STA_AUTHORIZED) {
			FUNC10(sta->sdata);
			FUNC2(WLAN_STA_AUTHORIZED, &sta->_flags);
			FUNC7(sta);
			FUNC6(sta);
		}
		break;
	case IEEE80211_STA_AUTHORIZED:
		if (sta->sta_state == IEEE80211_STA_ASSOC) {
			FUNC11(sta->sdata);
			FUNC14(WLAN_STA_AUTHORIZED, &sta->_flags);
			FUNC5(sta);
			FUNC4(sta);
		}
		if (sta->sdata->vif.type == NL80211_IFTYPE_AP_VLAN ||
		    sta->sdata->vif.type == NL80211_IFTYPE_AP)
			FUNC1(sta->sdata->dev,
						    sta->sta.addr);
		break;
	default:
		break;
	}

	sta->sta_state = new_state;

	return 0;
}