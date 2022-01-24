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
typedef  int u8 ;
struct sta_info {TYPE_1__* mesh; } ;
struct TYPE_5__ {int nonpeer_pm; scalar_t__ ps_peers_deep_sleep; } ;
struct TYPE_6__ {TYPE_2__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; int /*<<< orphan*/  frame_control; } ;
typedef  enum nl80211_mesh_power_mode { ____Placeholder_nl80211_mesh_power_mode } nl80211_mesh_power_mode ;
struct TYPE_4__ {scalar_t__ plink_state; int local_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_FCTL_PM ; 
 int IEEE80211_QOS_CTL_MESH_PS_LEVEL ; 
 int NL80211_MESH_POWER_ACTIVE ; 
 int NL80211_MESH_POWER_DEEP_SLEEP ; 
 scalar_t__ NL80211_PLINK_ESTAB ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int* FUNC2 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct ieee80211_sub_if_data *sdata,
				   struct sta_info *sta,
				   struct ieee80211_hdr *hdr)
{
	enum nl80211_mesh_power_mode pm;
	u8 *qc;

	if (FUNC0(FUNC5(hdr->addr1) &&
		    FUNC3(hdr->frame_control) &&
		    !sta))
		return;

	if (FUNC5(hdr->addr1) &&
	    FUNC3(hdr->frame_control) &&
	    sta->mesh->plink_state == NL80211_PLINK_ESTAB)
		pm = sta->mesh->local_pm;
	else
		pm = sdata->u.mesh.nonpeer_pm;

	if (pm == NL80211_MESH_POWER_ACTIVE)
		hdr->frame_control &= FUNC1(~IEEE80211_FCTL_PM);
	else
		hdr->frame_control |= FUNC1(IEEE80211_FCTL_PM);

	if (!FUNC3(hdr->frame_control))
		return;

	qc = FUNC2(hdr);

	if ((FUNC5(hdr->addr1) &&
	     pm == NL80211_MESH_POWER_DEEP_SLEEP) ||
	    (FUNC4(hdr->addr1) &&
	     sdata->u.mesh.ps_peers_deep_sleep > 0))
		qc[1] |= (IEEE80211_QOS_CTL_MESH_PS_LEVEL >> 8);
	else
		qc[1] &= ~(IEEE80211_QOS_CTL_MESH_PS_LEVEL >> 8);
}