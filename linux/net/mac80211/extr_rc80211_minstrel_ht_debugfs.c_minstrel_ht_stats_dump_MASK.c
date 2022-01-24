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
typedef  int u32 ;
struct minstrel_rate_stats {int prob_ewma; int retry_count; int last_success; int last_attempts; scalar_t__ att_hist; scalar_t__ succ_hist; } ;
struct minstrel_ht_sta {int* supported; int* max_tp_rate; int max_prob_rate; TYPE_1__* groups; } ;
struct mcs_group {int flags; int streams; unsigned int* duration; unsigned int shift; } ;
struct TYPE_2__ {struct minstrel_rate_stats* rates; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int,int) ; 
 int IEEE80211_TX_RC_40_MHZ_WIDTH ; 
 int IEEE80211_TX_RC_80_MHZ_WIDTH ; 
 int IEEE80211_TX_RC_MCS ; 
 int IEEE80211_TX_RC_SHORT_GI ; 
 int IEEE80211_TX_RC_VHT_MCS ; 
 unsigned int MCS_GROUP_RATES ; 
 int FUNC2 (int,int) ; 
 unsigned int FUNC3 (int) ; 
 unsigned int FUNC4 (struct minstrel_ht_sta*,int,unsigned int,int) ; 
 struct mcs_group* minstrel_mcs_groups ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 

__attribute__((used)) static char *
FUNC6(struct minstrel_ht_sta *mi, int i, char *p)
{
	const struct mcs_group *mg;
	unsigned int j, tp_max, tp_avg, eprob, tx_time;
	char htmode = '2';
	char gimode = 'L';
	u32 gflags;

	if (!mi->supported[i])
		return p;

	mg = &minstrel_mcs_groups[i];
	gflags = mg->flags;

	if (gflags & IEEE80211_TX_RC_40_MHZ_WIDTH)
		htmode = '4';
	else if (gflags & IEEE80211_TX_RC_80_MHZ_WIDTH)
		htmode = '8';
	if (gflags & IEEE80211_TX_RC_SHORT_GI)
		gimode = 'S';

	for (j = 0; j < MCS_GROUP_RATES; j++) {
		struct minstrel_rate_stats *mrs = &mi->groups[i].rates[j];
		static const int bitrates[4] = { 10, 20, 55, 110 };
		int idx = i * MCS_GROUP_RATES + j;
		unsigned int duration;

		if (!(mi->supported[i] & FUNC0(j)))
			continue;

		if (gflags & IEEE80211_TX_RC_MCS) {
			p += FUNC5(p, "HT%c0  ", htmode);
			p += FUNC5(p, "%cGI  ", gimode);
			p += FUNC5(p, "%d  ", mg->streams);
		} else if (gflags & IEEE80211_TX_RC_VHT_MCS) {
			p += FUNC5(p, "VHT%c0 ", htmode);
			p += FUNC5(p, "%cGI ", gimode);
			p += FUNC5(p, "%d  ", mg->streams);
		} else {
			p += FUNC5(p, "CCK    ");
			p += FUNC5(p, "%cP  ", j < 4 ? 'L' : 'S');
			p += FUNC5(p, "1 ");
		}

		*(p++) = (idx == mi->max_tp_rate[0]) ? 'A' : ' ';
		*(p++) = (idx == mi->max_tp_rate[1]) ? 'B' : ' ';
		*(p++) = (idx == mi->max_tp_rate[2]) ? 'C' : ' ';
		*(p++) = (idx == mi->max_tp_rate[3]) ? 'D' : ' ';
		*(p++) = (idx == mi->max_prob_rate) ? 'P' : ' ';

		if (gflags & IEEE80211_TX_RC_MCS) {
			p += FUNC5(p, "  MCS%-2u", (mg->streams - 1) * 8 + j);
		} else if (gflags & IEEE80211_TX_RC_VHT_MCS) {
			p += FUNC5(p, "  MCS%-1u/%1u", j, mg->streams);
		} else {
			int r = bitrates[j % 4];

			p += FUNC5(p, "   %2u.%1uM", r / 10, r % 10);
		}

		p += FUNC5(p, "  %3u  ", idx);

		/* tx_time[rate(i)] in usec */
		duration = mg->duration[j];
		duration <<= mg->shift;
		tx_time = FUNC1(duration, 1000);
		p += FUNC5(p, "%6u  ", tx_time);

		tp_max = FUNC4(mi, i, j, FUNC2(100, 100));
		tp_avg = FUNC4(mi, i, j, mrs->prob_ewma);
		eprob = FUNC3(mrs->prob_ewma * 1000);

		p += FUNC5(p, "%4u.%1u    %4u.%1u     %3u.%1u"
				"     %3u   %3u %-3u   "
				"%9llu   %-9llu\n",
				tp_max / 10, tp_max % 10,
				tp_avg / 10, tp_avg % 10,
				eprob / 10, eprob % 10,
				mrs->retry_count,
				mrs->last_success,
				mrs->last_attempts,
				(unsigned long long)mrs->succ_hist,
				(unsigned long long)mrs->att_hist);
	}

	return p;
}