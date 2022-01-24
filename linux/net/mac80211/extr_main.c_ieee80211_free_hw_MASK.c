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
struct TYPE_3__ {TYPE_2__* wiphy; } ;
struct ieee80211_local {int sband_allocated; TYPE_1__ hw; int /*<<< orphan*/  ack_status_frames; scalar_t__ wiphy_ciphers_allocated; int /*<<< orphan*/  mtx; int /*<<< orphan*/  iflist_mtx; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_4__ {int /*<<< orphan*/ * bands; int /*<<< orphan*/  cipher_suites; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int NUM_NL80211_BANDS ; 
 struct ieee80211_local* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ieee80211_free_ack_frame ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

void FUNC9(struct ieee80211_hw *hw)
{
	struct ieee80211_local *local = FUNC1(hw);
	enum nl80211_band band;

	FUNC6(&local->iflist_mtx);
	FUNC6(&local->mtx);

	if (local->wiphy_ciphers_allocated)
		FUNC5(local->hw.wiphy->cipher_suites);

	FUNC3(&local->ack_status_frames,
		     ieee80211_free_ack_frame, NULL);
	FUNC2(&local->ack_status_frames);

	FUNC7(local);

	FUNC4(local);

	for (band = 0; band < NUM_NL80211_BANDS; band++) {
		if (!(local->sband_allocated & FUNC0(band)))
			continue;
		FUNC5(local->hw.wiphy->bands[band]);
	}

	FUNC8(local->hw.wiphy);
}