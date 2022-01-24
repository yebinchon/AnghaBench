#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct minstrel_rate {void* ack_time; void* perfect_tx_time; } ;
struct ieee80211_rate {int flags; int /*<<< orphan*/  bitrate; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int IEEE80211_RATE_ERP_G ; 
 int FUNC1 (struct cfg80211_chan_def*) ; 
 void* FUNC2 (int,int,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void
FUNC3(enum nl80211_band band,
		    struct minstrel_rate *d,
		    struct ieee80211_rate *rate,
		    struct cfg80211_chan_def *chandef)
{
	int erp = !!(rate->flags & IEEE80211_RATE_ERP_G);
	int shift = FUNC1(chandef);

	d->perfect_tx_time = FUNC2(band, 1200,
			FUNC0(rate->bitrate, 1 << shift), erp, 1,
			shift);
	d->ack_time = FUNC2(band, 10,
			FUNC0(rate->bitrate, 1 << shift), erp, 1,
			shift);
}