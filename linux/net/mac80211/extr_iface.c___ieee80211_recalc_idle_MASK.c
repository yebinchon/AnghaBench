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
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_local {int /*<<< orphan*/  scanning; int /*<<< orphan*/  roc_list; TYPE_1__* ops; scalar_t__ monitors; int /*<<< orphan*/  chanctx_list; int /*<<< orphan*/  mtx; } ;
struct TYPE_2__ {int /*<<< orphan*/  remain_on_channel; } ;

/* Variables and functions */
 unsigned int IEEE80211_TPT_LEDTRIG_FL_CONNECTED ; 
 unsigned int IEEE80211_TPT_LEDTRIG_FL_WORK ; 
 int /*<<< orphan*/  SCAN_ONCHANNEL_SCANNING ; 
 int /*<<< orphan*/  SCAN_SW_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC6(struct ieee80211_local *local,
				   bool force_active)
{
	bool working, scanning, active;
	unsigned int led_trig_start = 0, led_trig_stop = 0;

	FUNC4(&local->mtx);

	active = force_active ||
		 !FUNC3(&local->chanctx_list) ||
		 local->monitors;

	working = !local->ops->remain_on_channel &&
		  !FUNC3(&local->roc_list);

	scanning = FUNC5(SCAN_SW_SCANNING, &local->scanning) ||
		   FUNC5(SCAN_ONCHANNEL_SCANNING, &local->scanning);

	if (working || scanning)
		led_trig_start |= IEEE80211_TPT_LEDTRIG_FL_WORK;
	else
		led_trig_stop |= IEEE80211_TPT_LEDTRIG_FL_WORK;

	if (active)
		led_trig_start |= IEEE80211_TPT_LEDTRIG_FL_CONNECTED;
	else
		led_trig_stop |= IEEE80211_TPT_LEDTRIG_FL_CONNECTED;

	FUNC2(local, led_trig_start, led_trig_stop);

	if (working || scanning || active)
		return FUNC0(local);
	return FUNC1(local);
}