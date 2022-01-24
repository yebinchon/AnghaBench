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
typedef  scalar_t__ u8 ;
struct ieee80211_rx_data {TYPE_3__* skb; int /*<<< orphan*/  sta; TYPE_2__* sdata; } ;
struct TYPE_9__ {scalar_t__ category; } ;
struct TYPE_10__ {TYPE_4__ action; } ;
struct ieee80211_mgmt {TYPE_5__ u; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/  addr4; int /*<<< orphan*/  addr3; int /*<<< orphan*/  addr1; } ;
typedef  int /*<<< orphan*/  ieee80211_rx_result ;
struct TYPE_8__ {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_6__ {char* addr; } ;
struct TYPE_7__ {TYPE_1__ vif; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_MIN_ACTION_SIZE ; 
 scalar_t__ NL80211_PLINK_ESTAB ; 
 int /*<<< orphan*/  RX_CONTINUE ; 
 int /*<<< orphan*/  RX_DROP_MONITOR ; 
 scalar_t__ WLAN_CATEGORY_MESH_ACTION ; 
 scalar_t__ WLAN_CATEGORY_SELF_PROTECTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ieee80211_rx_result FUNC13(struct ieee80211_rx_data *rx)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)rx->skb->data;
	char *dev_addr = rx->sdata->vif.addr;

	if (FUNC7(hdr->frame_control)) {
		if (FUNC11(hdr->addr1)) {
			if (FUNC3(hdr->frame_control) ||
			    !FUNC2(hdr->frame_control))
				return RX_DROP_MONITOR;
			if (FUNC0(hdr->addr3, dev_addr))
				return RX_DROP_MONITOR;
		} else {
			if (!FUNC1(hdr->frame_control))
				return RX_DROP_MONITOR;
			if (FUNC0(hdr->addr4, dev_addr))
				return RX_DROP_MONITOR;
		}
	}

	/* If there is not an established peer link and this is not a peer link
	 * establisment frame, beacon or probe, drop the frame.
	 */

	if (!rx->sta || FUNC12(rx->sta) != NL80211_PLINK_ESTAB) {
		struct ieee80211_mgmt *mgmt;

		if (!FUNC8(hdr->frame_control))
			return RX_DROP_MONITOR;

		if (FUNC4(hdr->frame_control)) {
			u8 category;

			/* make sure category field is present */
			if (rx->skb->len < IEEE80211_MIN_ACTION_SIZE)
				return RX_DROP_MONITOR;

			mgmt = (struct ieee80211_mgmt *)hdr;
			category = mgmt->u.action.category;
			if (category != WLAN_CATEGORY_MESH_ACTION &&
			    category != WLAN_CATEGORY_SELF_PROTECTED)
				return RX_DROP_MONITOR;
			return RX_CONTINUE;
		}

		if (FUNC9(hdr->frame_control) ||
		    FUNC10(hdr->frame_control) ||
		    FUNC6(hdr->frame_control) ||
		    FUNC5(hdr->frame_control))
			return RX_CONTINUE;

		return RX_DROP_MONITOR;
	}

	return RX_CONTINUE;
}