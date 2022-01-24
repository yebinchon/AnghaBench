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
struct txq_info {int /*<<< orphan*/  txq; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_local*,struct txq_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct ieee80211_local *local,
					 struct txq_info *txqi)
{
	FUNC1(&local->hw, &txqi->txq);
	FUNC0(local, txqi);
}