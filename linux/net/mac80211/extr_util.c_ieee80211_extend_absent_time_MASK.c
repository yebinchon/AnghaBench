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
typedef  scalar_t__ u32 ;
struct ieee80211_noa_data {TYPE_1__* desc; int /*<<< orphan*/ * count; } ;
typedef  scalar_t__ s32 ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ duration; } ;

/* Variables and functions */
 int IEEE80211_P2P_NOA_DESC_MAX ; 
 scalar_t__ FUNC0 (struct ieee80211_noa_data*,scalar_t__,int) ; 

__attribute__((used)) static bool
FUNC1(struct ieee80211_noa_data *data, u32 tsf,
			     s32 *offset)
{
	bool ret = false;
	int i;

	for (i = 0; i < IEEE80211_P2P_NOA_DESC_MAX; i++) {
		s32 cur;

		if (!data->count[i])
			continue;

		if (FUNC0(data, tsf + *offset, i))
			ret = true;

		cur = data->desc[i].start - tsf;
		if (cur > *offset)
			continue;

		cur = data->desc[i].start + data->desc[i].duration - tsf;
		if (cur > *offset)
			*offset = cur;
	}

	return ret;
}