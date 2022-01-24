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
typedef  int /*<<< orphan*/  u64 ;
struct ieee80211_sta_rx_stats {int /*<<< orphan*/  bytes; int /*<<< orphan*/  syncp; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static inline u64 FUNC2(struct ieee80211_sta_rx_stats *rxstats)
{
	unsigned int start;
	u64 value;

	do {
		start = FUNC0(&rxstats->syncp);
		value = rxstats->bytes;
	} while (FUNC1(&rxstats->syncp, start));

	return value;
}