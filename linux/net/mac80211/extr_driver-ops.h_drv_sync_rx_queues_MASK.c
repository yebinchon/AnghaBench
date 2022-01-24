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
struct sta_info {int /*<<< orphan*/  sta; int /*<<< orphan*/  sdata; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sync_rx_queues ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct ieee80211_local *local,
				      struct sta_info *sta)
{
	if (local->ops->sync_rx_queues) {
		FUNC2(local, sta->sdata, &sta->sta);
		local->ops->sync_rx_queues(&local->hw);
		FUNC1(local);
	}
}