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
struct TYPE_2__ {int /*<<< orphan*/ * chan; } ;
struct ieee80211_local {int /*<<< orphan*/  next_scan_state; TYPE_1__ scan_chandef; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  IEEE80211_CONF_CHANGE_CHANNEL ; 
 int /*<<< orphan*/  SCAN_RESUME ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*) ; 

__attribute__((used)) static void FUNC2(struct ieee80211_local *local,
					 unsigned long *next_delay)
{
	/* switch back to the operating channel */
	local->scan_chandef.chan = NULL;
	FUNC0(local, IEEE80211_CONF_CHANGE_CHANNEL);

	/* disable PS */
	FUNC1(local);

	*next_delay = HZ / 5;
	/* afterwards, resume scan & go to next channel */
	local->next_scan_state = SCAN_RESUME;
}