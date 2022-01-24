#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ps_data {int /*<<< orphan*/  bc_buf; int /*<<< orphan*/  num_sta_ps; } ;
struct ieee80211_tx_info {int /*<<< orphan*/  flags; int /*<<< orphan*/  hw_queue; } ;
struct ieee80211_tx_data {TYPE_4__* skb; TYPE_5__* local; TYPE_6__* sdata; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  ieee80211_tx_result ;
struct TYPE_15__ {scalar_t__ type; int /*<<< orphan*/  cab_queue; } ;
struct TYPE_10__ {struct ps_data ps; } ;
struct TYPE_11__ {TYPE_2__ mesh; } ;
struct TYPE_14__ {TYPE_7__ vif; TYPE_3__ u; TYPE_1__* bss; } ;
struct TYPE_13__ {scalar_t__ total_ps_buffered; int /*<<< orphan*/  hw; } ;
struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_9__ {struct ps_data ps; } ;

/* Variables and functions */
 scalar_t__ AP_MAX_BC_BUFFER ; 
 int /*<<< orphan*/  HOST_BROADCAST_PS_BUFFERING ; 
 struct ieee80211_tx_info* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  IEEE80211_TX_CTL_SEND_AFTER_DTIM ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_AP_VLAN ; 
 int /*<<< orphan*/  QUEUE_CONTROL ; 
 scalar_t__ TOTAL_MAX_TX_BUFFER ; 
 int /*<<< orphan*/  TX_CONTINUE ; 
 int /*<<< orphan*/  TX_QUEUED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_4__*) ; 

__attribute__((used)) static ieee80211_tx_result
FUNC13(struct ieee80211_tx_data *tx)
{
	struct ieee80211_tx_info *info = FUNC0(tx->skb);
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)tx->skb->data;
	struct ps_data *ps;

	/*
	 * broadcast/multicast frame
	 *
	 * If any of the associated/peer stations is in power save mode,
	 * the frame is buffered to be sent after DTIM beacon frame.
	 * This is done either by the hardware or us.
	 */

	/* powersaving STAs currently only in AP/VLAN/mesh mode */
	if (tx->sdata->vif.type == NL80211_IFTYPE_AP ||
	    tx->sdata->vif.type == NL80211_IFTYPE_AP_VLAN) {
		if (!tx->sdata->bss)
			return TX_CONTINUE;

		ps = &tx->sdata->bss->ps;
	} else if (FUNC6(&tx->sdata->vif)) {
		ps = &tx->sdata->u.mesh.ps;
	} else {
		return TX_CONTINUE;
	}


	/* no buffering for ordered frames */
	if (FUNC3(hdr->frame_control))
		return TX_CONTINUE;

	if (FUNC5(hdr->frame_control))
		return TX_CONTINUE;

	if (FUNC4(&tx->local->hw, QUEUE_CONTROL))
		info->hw_queue = tx->sdata->vif.cab_queue;

	/* no stations in PS mode and no buffered packets */
	if (!FUNC1(&ps->num_sta_ps) && FUNC10(&ps->bc_buf))
		return TX_CONTINUE;

	info->flags |= IEEE80211_TX_CTL_SEND_AFTER_DTIM;

	/* device releases frame after DTIM beacon */
	if (!FUNC4(&tx->local->hw, HOST_BROADCAST_PS_BUFFERING))
		return TX_CONTINUE;

	/* buffered in mac80211 */
	if (tx->local->total_ps_buffered >= TOTAL_MAX_TX_BUFFER)
		FUNC8(tx->local);

	if (FUNC11(&ps->bc_buf) >= AP_MAX_BC_BUFFER) {
		FUNC7(tx->sdata,
		       "BC TX buffer full - dropping the oldest frame\n");
		FUNC2(&tx->local->hw, FUNC9(&ps->bc_buf));
	} else
		tx->local->total_ps_buffered++;

	FUNC12(&ps->bc_buf, tx->skb);

	return TX_QUEUED;
}