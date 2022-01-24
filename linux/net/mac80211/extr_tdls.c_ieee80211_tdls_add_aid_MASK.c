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
struct sk_buff {int dummy; } ;
struct ieee80211_if_managed {int /*<<< orphan*/  aid; } ;
struct TYPE_2__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_EID_AID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct sk_buff*,int) ; 

__attribute__((used)) static void
FUNC2(struct ieee80211_sub_if_data *sdata, struct sk_buff *skb)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	u8 *pos = FUNC1(skb, 4);

	*pos++ = WLAN_EID_AID;
	*pos++ = 2; /* len */
	FUNC0(ifmgd->aid, pos);
}