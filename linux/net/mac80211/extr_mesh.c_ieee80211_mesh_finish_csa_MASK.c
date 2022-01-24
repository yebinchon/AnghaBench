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
struct mesh_csa_settings {int dummy; } ;
struct TYPE_9__ {TYPE_2__* chan; } ;
struct TYPE_10__ {TYPE_3__ chandef; } ;
struct TYPE_11__ {TYPE_4__ bss_conf; } ;
struct TYPE_7__ {int /*<<< orphan*/  mtx; } ;
struct ieee80211_if_mesh {int /*<<< orphan*/  csa; scalar_t__ chsw_ttl; int /*<<< orphan*/  csa_role; } ;
struct TYPE_12__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_5__ vif; TYPE_1__ wdev; TYPE_6__ u; } ;
struct TYPE_8__ {int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int BSS_CHANGED_BEACON ; 
 int EINVAL ; 
 int /*<<< orphan*/  IEEE80211_MESH_CSA_ROLE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct mesh_csa_settings*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/ ) ; 
 struct mesh_csa_settings* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 

int FUNC6(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
	struct mesh_csa_settings *tmp_csa_settings;
	int ret = 0;
	int changed = 0;

	/* Reset the TTL value and Initiator flag */
	ifmsh->csa_role = IEEE80211_MESH_CSA_ROLE_NONE;
	ifmsh->chsw_ttl = 0;

	/* Remove the CSA and MCSP elements from the beacon */
	tmp_csa_settings = FUNC5(ifmsh->csa,
					    FUNC3(&sdata->wdev.mtx));
	FUNC0(ifmsh->csa, NULL);
	if (tmp_csa_settings)
		FUNC2(tmp_csa_settings, rcu_head);
	ret = FUNC1(sdata);
	if (ret)
		return -EINVAL;

	changed |= BSS_CHANGED_BEACON;

	FUNC4(sdata, "complete switching to center freq %d MHz",
		 sdata->vif.bss_conf.chandef.chan->center_freq);
	return changed;
}