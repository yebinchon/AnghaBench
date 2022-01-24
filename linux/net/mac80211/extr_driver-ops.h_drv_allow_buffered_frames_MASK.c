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
typedef  int /*<<< orphan*/  u16 ;
struct sta_info {int /*<<< orphan*/  sta; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
typedef  enum ieee80211_frame_release_type { ____Placeholder_ieee80211_frame_release_type } ieee80211_frame_release_type ;
struct TYPE_2__ {int /*<<< orphan*/  (* allow_buffered_frames ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*) ; 

__attribute__((used)) static inline void
FUNC3(struct ieee80211_local *local,
			  struct sta_info *sta, u16 tids, int num_frames,
			  enum ieee80211_frame_release_type reason,
			  bool more_data)
{
	FUNC1(local, &sta->sta, tids, num_frames,
					reason, more_data);
	if (local->ops->allow_buffered_frames)
		local->ops->allow_buffered_frames(&local->hw, &sta->sta,
						  tids, num_frames, reason,
						  more_data);
	FUNC2(local);
}