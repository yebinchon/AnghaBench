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
struct tid_ampdu_rx {int /*<<< orphan*/  reorder_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/ * tid_rx; } ;
struct sta_info {int /*<<< orphan*/  sta; int /*<<< orphan*/  sdata; TYPE_1__ ampdu_mlme; int /*<<< orphan*/  local; } ;
struct sk_buff_head {int dummy; } ;
struct ieee80211_rx_data {int security_idx; int seqno_idx; int /*<<< orphan*/  sdata; int /*<<< orphan*/  local; int /*<<< orphan*/ * napi; struct sta_info* sta; } ;
struct TYPE_5__ {int tid; int /*<<< orphan*/ * sta; } ;
struct TYPE_6__ {TYPE_2__ ba; } ;
struct ieee80211_event {TYPE_3__ u; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA_FRAME_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_rx_data*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tid_ampdu_rx*,struct sk_buff_head*) ; 
 struct tid_ampdu_rx* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct sta_info *sta, int tid)
{
	struct sk_buff_head frames;
	struct ieee80211_rx_data rx = {
		.sta = sta,
		.sdata = sta->sdata,
		.local = sta->local,
		/* This is OK -- must be QoS data frame */
		.security_idx = tid,
		.seqno_idx = tid,
		.napi = NULL, /* must be NULL to not have races */
	};
	struct tid_ampdu_rx *tid_agg_rx;

	tid_agg_rx = FUNC4(sta->ampdu_mlme.tid_rx[tid]);
	if (!tid_agg_rx)
		return;

	FUNC0(&frames);

	FUNC6(&tid_agg_rx->reorder_lock);
	FUNC3(sta->sdata, tid_agg_rx, &frames);
	FUNC7(&tid_agg_rx->reorder_lock);

	if (!FUNC5(&frames)) {
		struct ieee80211_event event = {
			.type = BA_FRAME_TIMEOUT,
			.u.ba.tid = tid,
			.u.ba.sta = &sta->sta,
		};
		FUNC1(rx.local, rx.sdata, &event);
	}

	FUNC2(&rx, &frames);
}