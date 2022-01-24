#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  assoc; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nl80211_tdls_operation { ____Placeholder_nl80211_tdls_operation } nl80211_tdls_operation ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,char*,int) ; 
 struct ieee80211_sub_if_data* FUNC2 (struct ieee80211_vif*) ; 

void FUNC3(struct ieee80211_vif *vif, const u8 *peer,
				 enum nl80211_tdls_operation oper,
				 u16 reason_code, gfp_t gfp)
{
	struct ieee80211_sub_if_data *sdata = FUNC2(vif);

	if (vif->type != NL80211_IFTYPE_STATION || !vif->bss_conf.assoc) {
		FUNC1(sdata, "Discarding TDLS oper %d - not STA or disconnected\n",
			  oper);
		return;
	}

	FUNC0(sdata->dev, peer, oper, reason_code, gfp);
}