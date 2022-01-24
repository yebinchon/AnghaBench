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
typedef  int /*<<< orphan*/  u16 ;
struct minstrel_priv {TYPE_2__* hw; } ;
struct minstrel_ht_sta {scalar_t__ sample_mode; TYPE_3__* sta; int /*<<< orphan*/  max_prob_rate; int /*<<< orphan*/ * max_tp_rate; int /*<<< orphan*/  sample_rate; } ;
struct ieee80211_sta_rates {TYPE_1__* rate; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_rc_amsdu_len; } ;
struct TYPE_5__ {int max_rates; } ;
struct TYPE_4__ {int idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MINSTREL_SAMPLE_ACTIVE ; 
 struct ieee80211_sta_rates* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct minstrel_ht_sta*) ; 
 int /*<<< orphan*/  FUNC2 (struct minstrel_priv*,struct minstrel_ht_sta*,struct ieee80211_sta_rates*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*,struct ieee80211_sta_rates*) ; 

__attribute__((used)) static void
FUNC4(struct minstrel_priv *mp, struct minstrel_ht_sta *mi)
{
	struct ieee80211_sta_rates *rates;
	u16 first_rate = mi->max_tp_rate[0];
	int i = 0;

	if (mi->sample_mode == MINSTREL_SAMPLE_ACTIVE)
		first_rate = mi->sample_rate;

	rates = FUNC0(sizeof(*rates), GFP_ATOMIC);
	if (!rates)
		return;

	/* Start with max_tp_rate[0] */
	FUNC2(mp, mi, rates, i++, first_rate);

	if (mp->hw->max_rates >= 3) {
		/* At least 3 tx rates supported, use max_tp_rate[1] next */
		FUNC2(mp, mi, rates, i++, mi->max_tp_rate[1]);
	}

	if (mp->hw->max_rates >= 2) {
		FUNC2(mp, mi, rates, i++, mi->max_prob_rate);
	}

	mi->sta->max_rc_amsdu_len = FUNC1(mi);
	rates->rate[i].idx = -1;
	FUNC3(mp->hw, mi->sta, rates);
}