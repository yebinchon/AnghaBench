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
struct ieee80211_tx_rate {int flags; } ;

/* Variables and functions */
 int IEEE80211_TX_RC_40_MHZ_WIDTH ; 
 int IEEE80211_TX_RC_80_MHZ_WIDTH ; 
 int IEEE80211_TX_RC_SHORT_GI ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_tx_rate*) ; 

__attribute__((used)) static int
FUNC2(struct ieee80211_tx_rate *rate)
{
	return FUNC0(FUNC1(rate),
			     !!(rate->flags & IEEE80211_TX_RC_SHORT_GI),
			     !!(rate->flags & IEEE80211_TX_RC_40_MHZ_WIDTH) +
			     2*!!(rate->flags & IEEE80211_TX_RC_80_MHZ_WIDTH));
}