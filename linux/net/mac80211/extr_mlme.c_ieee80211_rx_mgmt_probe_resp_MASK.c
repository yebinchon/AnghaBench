#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {size_t len; scalar_t__ cb; scalar_t__ data; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct ieee80211_if_managed {TYPE_5__* associated; } ;
struct TYPE_6__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; TYPE_1__ u; } ;
struct ieee80211_rx_status {int dummy; } ;
struct TYPE_8__ {scalar_t__ variable; } ;
struct TYPE_9__ {TYPE_3__ probe_resp; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  bssid; TYPE_4__ u; int /*<<< orphan*/  da; } ;
struct TYPE_10__ {int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,size_t,struct ieee80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_sub_if_data *sdata,
					 struct sk_buff *skb)
{
	struct ieee80211_mgmt *mgmt = (void *)skb->data;
	struct ieee80211_if_managed *ifmgd;
	struct ieee80211_rx_status *rx_status = (void *) skb->cb;
	size_t baselen, len = skb->len;

	ifmgd = &sdata->u.mgd;

	FUNC3(sdata);

	if (!FUNC0(mgmt->da, sdata->vif.addr))
		return; /* ignore ProbeResp to foreign address */

	baselen = (u8 *) mgmt->u.probe_resp.variable - (u8 *) mgmt;
	if (baselen > len)
		return;

	FUNC2(sdata, mgmt, len, rx_status);

	if (ifmgd->associated &&
	    FUNC0(mgmt->bssid, ifmgd->associated->bssid))
		FUNC1(sdata);
}