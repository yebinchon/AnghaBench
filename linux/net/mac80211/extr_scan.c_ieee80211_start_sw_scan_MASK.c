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
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int /*<<< orphan*/  scan_work; int /*<<< orphan*/  hw; scalar_t__ scan_channel_idx; int /*<<< orphan*/  next_scan_state; int /*<<< orphan*/  leave_oper_channel_time; int /*<<< orphan*/  scan_addr; scalar_t__ use_chanctx; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  SCAN_DECISION ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 

__attribute__((used)) static int FUNC6(struct ieee80211_local *local,
				   struct ieee80211_sub_if_data *sdata)
{
	/* Software scan is not supported in multi-channel cases */
	if (local->use_chanctx)
		return -EOPNOTSUPP;

	/*
	 * Hardware/driver doesn't support hw_scan, so use software
	 * scanning instead. First send a nullfunc frame with power save
	 * bit on so that AP will buffer the frames for us while we are not
	 * listening, then send probe requests to each channel and wait for
	 * the responses. After all channels are scanned, tune back to the
	 * original channel and send a nullfunc frame with power save bit
	 * off to trigger the AP to send us all the buffered frames.
	 *
	 * Note that while local->sw_scanning is true everything else but
	 * nullfunc frames and probe requests will be dropped in
	 * ieee80211_tx_h_check_assoc().
	 */
	FUNC0(local, sdata, local->scan_addr);

	local->leave_oper_channel_time = jiffies;
	local->next_scan_state = SCAN_DECISION;
	local->scan_channel_idx = 0;

	FUNC4(local);

	/* ensure nullfunc is transmitted before leaving operating channel */
	FUNC2(local, NULL, false);

	FUNC1(local);

	/* We need to set power level at maximum rate for scanning. */
	FUNC3(local, 0);

	FUNC5(&local->hw,
				     &local->scan_work, 0);

	return 0;
}