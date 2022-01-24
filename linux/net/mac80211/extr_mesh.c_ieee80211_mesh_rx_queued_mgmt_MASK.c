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
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  mesh_id_len; } ;
struct TYPE_4__ {TYPE_1__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 int IEEE80211_FCTL_STYPE ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
#define  IEEE80211_STYPE_ACTION 131 
#define  IEEE80211_STYPE_BEACON 130 
#define  IEEE80211_STYPE_PROBE_REQ 129 
#define  IEEE80211_STYPE_PROBE_RESP 128 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,int,struct ieee80211_mgmt*,int /*<<< orphan*/ ,struct ieee80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,int /*<<< orphan*/ ,struct ieee80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*) ; 

void FUNC7(struct ieee80211_sub_if_data *sdata,
				   struct sk_buff *skb)
{
	struct ieee80211_rx_status *rx_status;
	struct ieee80211_mgmt *mgmt;
	u16 stype;

	FUNC5(sdata);

	/* mesh already went down */
	if (!sdata->u.mesh.mesh_id_len)
		goto out;

	rx_status = FUNC0(skb);
	mgmt = (struct ieee80211_mgmt *) skb->data;
	stype = FUNC4(mgmt->frame_control) & IEEE80211_FCTL_STYPE;

	switch (stype) {
	case IEEE80211_STYPE_PROBE_RESP:
	case IEEE80211_STYPE_BEACON:
		FUNC1(sdata, stype, mgmt, skb->len,
					    rx_status);
		break;
	case IEEE80211_STYPE_PROBE_REQ:
		FUNC3(sdata, mgmt, skb->len);
		break;
	case IEEE80211_STYPE_ACTION:
		FUNC2(sdata, mgmt, skb->len, rx_status);
		break;
	}
out:
	FUNC6(sdata);
}