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
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  aid; } ;
struct sta_info {TYPE_2__ sta; int /*<<< orphan*/  ps_lock; int /*<<< orphan*/ * ps_tx_buf; int /*<<< orphan*/  sdata; } ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * vif; scalar_t__ jiffies; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
struct ieee80211_tx_data {TYPE_5__* sdata; TYPE_3__* skb; struct ieee80211_local* local; struct sta_info* sta; } ;
struct ieee80211_local {scalar_t__ total_ps_buffered; int /*<<< orphan*/  sta_cleanup; int /*<<< orphan*/  hw; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  ieee80211_tx_result ;
struct TYPE_10__ {int /*<<< orphan*/  vif; } ;
struct TYPE_9__ {scalar_t__ data; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (TYPE_3__*) ; 
 int IEEE80211_TX_CTL_NO_PS_BUFFER ; 
 int IEEE80211_TX_INTFL_NEED_TXPROCESSING ; 
 int IEEE80211_TX_TEMPORARY_FLAGS ; 
 scalar_t__ STA_INFO_CLEANUP_INTERVAL ; 
 scalar_t__ STA_MAX_TX_BUFFER ; 
 scalar_t__ TOTAL_MAX_TX_BUFFER ; 
 int /*<<< orphan*/  TX_CONTINUE ; 
 int /*<<< orphan*/  TX_QUEUED ; 
 int /*<<< orphan*/  WLAN_STA_PS_DELIVER ; 
 int /*<<< orphan*/  WLAN_STA_PS_DRIVER ; 
 int /*<<< orphan*/  WLAN_STA_PS_STA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sta_info*) ; 
 int FUNC15 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static ieee80211_tx_result
FUNC18(struct ieee80211_tx_data *tx)
{
	struct sta_info *sta = tx->sta;
	struct ieee80211_tx_info *info = FUNC0(tx->skb);
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)tx->skb->data;
	struct ieee80211_local *local = tx->local;

	if (FUNC17(!sta))
		return TX_CONTINUE;

	if (FUNC17((FUNC15(sta, WLAN_STA_PS_STA) ||
		      FUNC15(sta, WLAN_STA_PS_DRIVER) ||
		      FUNC15(sta, WLAN_STA_PS_DELIVER)) &&
		     !(info->flags & IEEE80211_TX_CTL_NO_PS_BUFFER))) {
		int ac = FUNC9(tx->skb);

		if (FUNC3(hdr->frame_control) &&
		    !FUNC2(hdr->frame_control)) {
			info->flags |= IEEE80211_TX_CTL_NO_PS_BUFFER;
			return TX_CONTINUE;
		}

		FUNC5(sta->sdata, "STA %pM aid %d: PS buffer for AC %d\n",
		       sta->sta.addr, sta->sta.aid, ac);
		if (tx->local->total_ps_buffered >= TOTAL_MAX_TX_BUFFER)
			FUNC6(tx->local);

		/* sync with ieee80211_sta_ps_deliver_wakeup */
		FUNC12(&sta->ps_lock);
		/*
		 * STA woke up the meantime and all the frames on ps_tx_buf have
		 * been queued to pending queue. No reordering can happen, go
		 * ahead and Tx the packet.
		 */
		if (!FUNC15(sta, WLAN_STA_PS_STA) &&
		    !FUNC15(sta, WLAN_STA_PS_DRIVER) &&
		    !FUNC15(sta, WLAN_STA_PS_DELIVER)) {
			FUNC13(&sta->ps_lock);
			return TX_CONTINUE;
		}

		if (FUNC10(&sta->ps_tx_buf[ac]) >= STA_MAX_TX_BUFFER) {
			struct sk_buff *old = FUNC8(&sta->ps_tx_buf[ac]);
			FUNC5(tx->sdata,
			       "STA %pM TX buffer for AC %d full - dropping oldest frame\n",
			       sta->sta.addr, ac);
			FUNC1(&local->hw, old);
		} else
			tx->local->total_ps_buffered++;

		info->control.jiffies = jiffies;
		info->control.vif = &tx->sdata->vif;
		info->flags |= IEEE80211_TX_INTFL_NEED_TXPROCESSING;
		info->flags &= ~IEEE80211_TX_TEMPORARY_FLAGS;
		FUNC11(&sta->ps_tx_buf[ac], tx->skb);
		FUNC13(&sta->ps_lock);

		if (!FUNC16(&local->sta_cleanup))
			FUNC4(&local->sta_cleanup,
				  FUNC7(jiffies +
						STA_INFO_CLEANUP_INTERVAL));

		/*
		 * We queued up some frames, so the TIM bit might
		 * need to be set, recalculate it.
		 */
		FUNC14(sta);

		return TX_QUEUED;
	} else if (FUNC17(FUNC15(sta, WLAN_STA_PS_STA))) {
		FUNC5(tx->sdata,
		       "STA %pM in PS mode, but polling/in SP -> send frame\n",
		       sta->sta.addr);
	}

	return TX_CONTINUE;
}