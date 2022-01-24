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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_scan_ies {int** ies; size_t* len; int* common_ies; size_t common_ie_len; } ;
struct ieee80211_local {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int NUM_NL80211_BANDS ; 
 scalar_t__ FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (struct ieee80211_local*,int*,size_t,int const*,size_t,int,int /*<<< orphan*/ ,struct cfg80211_chan_def*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_scan_ies*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct ieee80211_local *local, u8 *buffer,
			     size_t buffer_len,
			     struct ieee80211_scan_ies *ie_desc,
			     const u8 *ie, size_t ie_len,
			     u8 bands_used, u32 *rate_masks,
			     struct cfg80211_chan_def *chandef,
			     u32 flags)
{
	size_t pos = 0, old_pos = 0, custom_ie_offset = 0;
	int i;

	FUNC4(ie_desc, 0, sizeof(*ie_desc));

	for (i = 0; i < NUM_NL80211_BANDS; i++) {
		if (bands_used & FUNC0(i)) {
			pos += FUNC2(local,
							     buffer + pos,
							     buffer_len - pos,
							     ie, ie_len, i,
							     rate_masks[i],
							     chandef,
							     &custom_ie_offset,
							     flags);
			ie_desc->ies[i] = buffer + old_pos;
			ie_desc->len[i] = pos - old_pos;
			old_pos = pos;
		}
	}

	/* add any remaining custom IEs */
	if (ie && ie_len) {
		if (FUNC1(buffer_len - pos < ie_len - custom_ie_offset,
			      "not enough space for preq custom IEs\n"))
			return pos;
		FUNC3(buffer + pos, ie + custom_ie_offset,
		       ie_len - custom_ie_offset);
		ie_desc->common_ies = buffer + pos;
		ie_desc->common_ie_len = ie_len - custom_ie_offset;
		pos += ie_len - custom_ie_offset;
	}

	return pos;
}