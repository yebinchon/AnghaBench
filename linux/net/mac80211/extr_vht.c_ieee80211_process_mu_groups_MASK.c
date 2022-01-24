#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  position; int /*<<< orphan*/  membership; } ;
struct ieee80211_bss_conf {TYPE_2__ mu_group; } ;
struct TYPE_7__ {int /*<<< orphan*/  mu_mimo_owner; struct ieee80211_bss_conf bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;
struct TYPE_9__ {int /*<<< orphan*/  position; int /*<<< orphan*/  membership; } ;
struct TYPE_10__ {TYPE_3__ vht_group_notif; } ;
struct TYPE_11__ {TYPE_4__ u; } ;
struct TYPE_12__ {TYPE_5__ action; } ;
struct ieee80211_mgmt {TYPE_6__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSS_CHANGED_MU_GROUPS ; 
 int /*<<< orphan*/  WLAN_MEMBERSHIP_LEN ; 
 int /*<<< orphan*/  WLAN_USER_POSITION_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct ieee80211_sub_if_data *sdata,
				 struct ieee80211_mgmt *mgmt)
{
	struct ieee80211_bss_conf *bss_conf = &sdata->vif.bss_conf;

	if (!sdata->vif.mu_mimo_owner)
		return;

	if (!FUNC1(mgmt->u.action.u.vht_group_notif.position,
		    bss_conf->mu_group.position, WLAN_USER_POSITION_LEN) &&
	    !FUNC1(mgmt->u.action.u.vht_group_notif.membership,
		    bss_conf->mu_group.membership, WLAN_MEMBERSHIP_LEN))
		return;

	FUNC2(bss_conf->mu_group.membership,
	       mgmt->u.action.u.vht_group_notif.membership,
	       WLAN_MEMBERSHIP_LEN);
	FUNC2(bss_conf->mu_group.position,
	       mgmt->u.action.u.vht_group_notif.position,
	       WLAN_USER_POSITION_LEN);

	FUNC0(sdata, BSS_CHANGED_MU_GROUPS);
}