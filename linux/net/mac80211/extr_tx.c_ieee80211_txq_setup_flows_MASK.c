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
struct TYPE_9__ {scalar_t__ vht_supported; } ;
struct ieee80211_supported_band {TYPE_4__ vht_cap; } ;
struct TYPE_10__ {int ecn; void* target; void* interval; } ;
struct TYPE_8__ {TYPE_2__* wiphy; } ;
struct fq {int memory_limit; int flows_cnt; int /*<<< orphan*/  lock; } ;
struct ieee80211_local {int /*<<< orphan*/ * cvars; TYPE_5__ cparams; TYPE_3__ hw; TYPE_1__* ops; struct fq fq; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_7__ {struct ieee80211_supported_band** bands; } ;
struct TYPE_6__ {int /*<<< orphan*/  wake_tx_queue; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int) ; 
 int NUM_NL80211_BANDS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct fq*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fq_skb_free_func ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_local*) ; 
 int /*<<< orphan*/ * FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct ieee80211_local *local)
{
	struct fq *fq = &local->fq;
	int ret;
	int i;
	bool supp_vht = false;
	enum nl80211_band band;

	if (!local->ops->wake_tx_queue)
		return 0;

	ret = FUNC3(fq, 4096);
	if (ret)
		return ret;

	/*
	 * If the hardware doesn't support VHT, it is safe to limit the maximum
	 * queue size. 4 Mbytes is 64 max-size aggregates in 802.11n.
	 */
	for (band = 0; band < NUM_NL80211_BANDS; band++) {
		struct ieee80211_supported_band *sband;

		sband = local->hw.wiphy->bands[band];
		if (!sband)
			continue;

		supp_vht = supp_vht || sband->vht_cap.vht_supported;
	}

	if (!supp_vht)
		fq->memory_limit = 4 << 20; /* 4 Mbytes */

	FUNC1(&local->cparams);
	local->cparams.interval = FUNC0(100);
	local->cparams.target = FUNC0(20);
	local->cparams.ecn = true;

	local->cvars = FUNC6(fq->flows_cnt, sizeof(local->cvars[0]),
			       GFP_KERNEL);
	if (!local->cvars) {
		FUNC7(&fq->lock);
		FUNC4(fq, fq_skb_free_func);
		FUNC8(&fq->lock);
		return -ENOMEM;
	}

	for (i = 0; i < fq->flows_cnt; i++)
		FUNC2(&local->cvars[i]);

	FUNC5(local);

	return 0;
}