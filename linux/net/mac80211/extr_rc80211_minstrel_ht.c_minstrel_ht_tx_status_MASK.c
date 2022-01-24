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
struct minstrel_rate_stats {int success; int attempts; } ;
struct minstrel_priv {int update_interval; TYPE_2__* hw; } ;
struct minstrel_ht_sta {int ampdu_len; int sample_wait; int sample_tries; scalar_t__ sample_count; int sample_packets; int sample_mode; scalar_t__ last_stats_update; int /*<<< orphan*/ * max_tp_rate; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  ampdu_packets; } ;
struct minstrel_ht_sta_priv {int /*<<< orphan*/  legacy; int /*<<< orphan*/  is_ht; struct minstrel_ht_sta ht; } ;
struct ieee80211_tx_status {struct ieee80211_tx_info* info; } ;
struct ieee80211_tx_rate {int count; } ;
struct TYPE_4__ {int ampdu_ack_len; int ampdu_len; struct ieee80211_tx_rate* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ status; } ;
struct ieee80211_supported_band {int dummy; } ;
struct TYPE_6__ {void (* tx_status_ext ) (void*,struct ieee80211_supported_band*,int /*<<< orphan*/ *,struct ieee80211_tx_status*) ;} ;
struct TYPE_5__ {int max_rates; } ;

/* Variables and functions */
 int HZ ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int IEEE80211_TX_CTL_RATE_CTRL_PROBE ; 
 int IEEE80211_TX_MAX_RATES ; 
 int IEEE80211_TX_STAT_ACK ; 
 int IEEE80211_TX_STAT_AMPDU ; 
 scalar_t__ FUNC0 (int,int) ; 
#define  MINSTREL_SAMPLE_ACTIVE 130 
#define  MINSTREL_SAMPLE_IDLE 129 
#define  MINSTREL_SAMPLE_PENDING 128 
 int /*<<< orphan*/  jiffies ; 
 TYPE_3__ mac80211_minstrel ; 
 int /*<<< orphan*/  FUNC1 (struct minstrel_ht_sta*,int /*<<< orphan*/ *,int) ; 
 struct minstrel_rate_stats* FUNC2 (struct minstrel_ht_sta*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct minstrel_ht_sta*) ; 
 struct minstrel_rate_stats* FUNC4 (struct minstrel_priv*,struct minstrel_ht_sta*,struct ieee80211_tx_rate*) ; 
 int /*<<< orphan*/  FUNC5 (struct minstrel_priv*,struct ieee80211_tx_rate*) ; 
 int /*<<< orphan*/  FUNC6 (struct minstrel_priv*,struct minstrel_ht_sta*) ; 
 int /*<<< orphan*/  FUNC7 (struct minstrel_priv*,struct minstrel_ht_sta*,int) ; 
 void FUNC8 (void*,struct ieee80211_supported_band*,int /*<<< orphan*/ *,struct ieee80211_tx_status*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC10(void *priv, struct ieee80211_supported_band *sband,
                      void *priv_sta, struct ieee80211_tx_status *st)
{
	struct ieee80211_tx_info *info = st->info;
	struct minstrel_ht_sta_priv *msp = priv_sta;
	struct minstrel_ht_sta *mi = &msp->ht;
	struct ieee80211_tx_rate *ar = info->status.rates;
	struct minstrel_rate_stats *rate, *rate2, *rate_sample = NULL;
	struct minstrel_priv *mp = priv;
	bool last, update = false;
	bool sample_status = false;
	int i;

	if (!msp->is_ht)
		return mac80211_minstrel.tx_status_ext(priv, sband,
						       &msp->legacy, st);


	/* This packet was aggregated but doesn't carry status info */
	if ((info->flags & IEEE80211_TX_CTL_AMPDU) &&
	    !(info->flags & IEEE80211_TX_STAT_AMPDU))
		return;

	if (!(info->flags & IEEE80211_TX_STAT_AMPDU)) {
		info->status.ampdu_ack_len =
			(info->flags & IEEE80211_TX_STAT_ACK ? 1 : 0);
		info->status.ampdu_len = 1;
	}

	mi->ampdu_packets++;
	mi->ampdu_len += info->status.ampdu_len;

	if (!mi->sample_wait && !mi->sample_tries && mi->sample_count > 0) {
		int avg_ampdu_len = FUNC3(mi);

		mi->sample_wait = 16 + 2 * avg_ampdu_len;
		mi->sample_tries = 1;
		mi->sample_count--;
	}

	if (info->flags & IEEE80211_TX_CTL_RATE_CTRL_PROBE)
		mi->sample_packets += info->status.ampdu_len;

	if (mi->sample_mode != MINSTREL_SAMPLE_IDLE)
		rate_sample = FUNC2(mi, mi->sample_rate);

	last = !FUNC5(mp, &ar[0]);
	for (i = 0; !last; i++) {
		last = (i == IEEE80211_TX_MAX_RATES - 1) ||
		       !FUNC5(mp, &ar[i + 1]);

		rate = FUNC4(mp, mi, &ar[i]);
		if (rate == rate_sample)
			sample_status = true;

		if (last)
			rate->success += info->status.ampdu_ack_len;

		rate->attempts += ar[i].count * info->status.ampdu_len;
	}

	switch (mi->sample_mode) {
	case MINSTREL_SAMPLE_IDLE:
		break;

	case MINSTREL_SAMPLE_ACTIVE:
		if (!sample_status)
			break;

		mi->sample_mode = MINSTREL_SAMPLE_PENDING;
		update = true;
		break;

	case MINSTREL_SAMPLE_PENDING:
		if (sample_status)
			break;

		update = true;
		FUNC7(mp, mi, false);
		break;
	}


	if (mp->hw->max_rates > 1) {
		/*
		 * check for sudden death of spatial multiplexing,
		 * downgrade to a lower number of streams if necessary.
		 */
		rate = FUNC2(mi, mi->max_tp_rate[0]);
		if (rate->attempts > 30 &&
		    FUNC0(rate->success, rate->attempts) <
		    FUNC0(20, 100)) {
			FUNC1(mi, &mi->max_tp_rate[0], true);
			update = true;
		}

		rate2 = FUNC2(mi, mi->max_tp_rate[1]);
		if (rate2->attempts > 30 &&
		    FUNC0(rate2->success, rate2->attempts) <
		    FUNC0(20, 100)) {
			FUNC1(mi, &mi->max_tp_rate[1], false);
			update = true;
		}
	}

	if (FUNC9(jiffies, mi->last_stats_update +
				(mp->update_interval / 2 * HZ) / 1000)) {
		update = true;
		FUNC7(mp, mi, true);
	}

	if (update)
		FUNC6(mp, mi);
}