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
typedef  int /*<<< orphan*/  u32 ;
struct wiphy {int dummy; } ;
struct ieee80211_local {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211_local*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ieee80211_local* FUNC1 (struct wiphy*) ; 

__attribute__((used)) static int FUNC2(struct wiphy *wiphy, u32 *tx_ant, u32 *rx_ant)
{
	struct ieee80211_local *local = FUNC1(wiphy);

	return FUNC0(local, tx_ant, rx_ant);
}