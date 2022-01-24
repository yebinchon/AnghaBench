#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_rx_status {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  action_code; } ;
struct TYPE_6__ {TYPE_1__ self_prot; } ;
struct TYPE_7__ {int category; TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ action; } ;
struct ieee80211_mgmt {TYPE_4__ u; } ;

/* Variables and functions */
#define  WLAN_CATEGORY_MESH_ACTION 133 
#define  WLAN_CATEGORY_SELF_PROTECTED 132 
#define  WLAN_CATEGORY_SPECTRUM_MGMT 131 
#define  WLAN_SP_MESH_PEERING_CLOSE 130 
#define  WLAN_SP_MESH_PEERING_CONFIRM 129 
#define  WLAN_SP_MESH_PEERING_OPEN 128 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_mgmt*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,size_t,struct ieee80211_rx_status*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_sub_if_data *sdata,
					  struct ieee80211_mgmt *mgmt,
					  size_t len,
					  struct ieee80211_rx_status *rx_status)
{
	switch (mgmt->u.action.category) {
	case WLAN_CATEGORY_SELF_PROTECTED:
		switch (mgmt->u.action.u.self_prot.action_code) {
		case WLAN_SP_MESH_PEERING_OPEN:
		case WLAN_SP_MESH_PEERING_CLOSE:
		case WLAN_SP_MESH_PEERING_CONFIRM:
			FUNC3(sdata, mgmt, len, rx_status);
			break;
		}
		break;
	case WLAN_CATEGORY_MESH_ACTION:
		if (FUNC0(mgmt))
			FUNC2(sdata, mgmt, len);
		break;
	case WLAN_CATEGORY_SPECTRUM_MGMT:
		FUNC1(sdata, mgmt, len);
		break;
	}
}