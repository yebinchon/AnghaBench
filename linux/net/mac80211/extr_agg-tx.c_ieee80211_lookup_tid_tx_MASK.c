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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u16 ;
struct tid_ampdu_tx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * tid_tx; } ;
struct sta_info {TYPE_1__ ampdu_mlme; } ;
struct ieee80211_sub_if_data {int dummy; } ;

/* Variables and functions */
 size_t IEEE80211_NUM_TIDS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,char*,...) ; 
 struct tid_ampdu_tx* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC3 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static struct tid_ampdu_tx *
FUNC4(struct ieee80211_sub_if_data *sdata,
			const u8 *ra, u16 tid, struct sta_info **sta)
{
	struct tid_ampdu_tx *tid_tx;

	if (tid >= IEEE80211_NUM_TIDS) {
		FUNC1(sdata, "Bad TID value: tid = %d (>= %d)\n",
		       tid, IEEE80211_NUM_TIDS);
		return NULL;
	}

	*sta = FUNC3(sdata, ra);
	if (!*sta) {
		FUNC1(sdata, "Could not find station: %pM\n", ra);
		return NULL;
	}

	tid_tx = FUNC2((*sta)->ampdu_mlme.tid_tx[tid]);

	if (FUNC0(!tid_tx))
		FUNC1(sdata, "addBA was not requested!\n");

	return tid_tx;
}