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
struct ieee80211_noa_data {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_noa_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32
FUNC1(struct ieee80211_noa_data *data, u32 tsf)
{
	s32 offset = 0;
	int tries = 0;
	/*
	 * arbitrary limit, used to avoid infinite loops when combined NoA
	 * descriptors cover the full time period.
	 */
	int max_tries = 5;

	FUNC0(data, tsf, &offset);
	do {
		if (!FUNC0(data, tsf, &offset))
			break;

		tries++;
	} while (tries < max_tries);

	return offset;
}