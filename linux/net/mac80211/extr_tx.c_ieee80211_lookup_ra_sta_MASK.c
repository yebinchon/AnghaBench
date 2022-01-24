#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sta_info {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_13__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_10__ {int /*<<< orphan*/  remote_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  sta; } ;
struct TYPE_14__ {TYPE_6__ mgd; TYPE_3__ wds; TYPE_2__ vlan; } ;
struct TYPE_12__ {TYPE_4__* wiphy; int /*<<< orphan*/  use_4addr; } ;
struct TYPE_8__ {int type; } ;
struct ieee80211_sub_if_data {TYPE_7__ u; TYPE_5__ wdev; TYPE_1__ vif; } ;
struct TYPE_11__ {int flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int ENOLINK ; 
 struct sta_info* FUNC0 (int /*<<< orphan*/ ) ; 
#define  NL80211_IFTYPE_ADHOC 134 
#define  NL80211_IFTYPE_AP 133 
#define  NL80211_IFTYPE_AP_VLAN 132 
#define  NL80211_IFTYPE_MESH_POINT 131 
#define  NL80211_IFTYPE_OCB 130 
#define  NL80211_IFTYPE_STATION 129 
#define  NL80211_IFTYPE_WDS 128 
 int WIPHY_FLAG_SUPPORTS_TDLS ; 
 int /*<<< orphan*/  WLAN_STA_TDLS_PEER ; 
 int /*<<< orphan*/  WLAN_STA_TDLS_PEER_AUTH ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC4 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC5 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sta_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_sub_if_data *sdata,
				   struct sk_buff *skb,
				   struct sta_info **sta_out)
{
	struct sta_info *sta;

	switch (sdata->vif.type) {
	case NL80211_IFTYPE_AP_VLAN:
		sta = FUNC3(sdata->u.vlan.sta);
		if (sta) {
			*sta_out = sta;
			return 0;
		} else if (sdata->wdev.use_4addr) {
			return -ENOLINK;
		}
		/* fall through */
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_OCB:
	case NL80211_IFTYPE_ADHOC:
		if (FUNC2(skb->data)) {
			*sta_out = FUNC0(-ENOENT);
			return 0;
		}
		sta = FUNC5(sdata, skb->data);
		break;
	case NL80211_IFTYPE_WDS:
		sta = FUNC4(sdata, sdata->u.wds.remote_addr);
		break;
#ifdef CONFIG_MAC80211_MESH
	case NL80211_IFTYPE_MESH_POINT:
		/* determined much later */
		*sta_out = NULL;
		return 0;
#endif
	case NL80211_IFTYPE_STATION:
		if (sdata->wdev.wiphy->flags & WIPHY_FLAG_SUPPORTS_TDLS) {
			sta = FUNC4(sdata, skb->data);
			if (sta && FUNC6(sta, WLAN_STA_TDLS_PEER)) {
				if (FUNC6(sta,
						  WLAN_STA_TDLS_PEER_AUTH)) {
					*sta_out = sta;
					return 0;
				}

				/*
				 * TDLS link during setup - throw out frames to
				 * peer. Allow TDLS-setup frames to unauthorized
				 * peers for the special case of a link teardown
				 * after a TDLS sta is removed due to being
				 * unreachable.
				 */
				if (!FUNC1(skb))
					return -EINVAL;
			}

		}

		sta = FUNC4(sdata, sdata->u.mgd.bssid);
		if (!sta)
			return -ENOLINK;
		break;
	default:
		return -EINVAL;
	}

	*sta_out = sta ?: FUNC0(-ENOENT);
	return 0;
}