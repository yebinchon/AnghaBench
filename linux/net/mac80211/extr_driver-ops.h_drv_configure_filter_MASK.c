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
typedef  int /*<<< orphan*/  u64 ;
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* configure_filter ) (int /*<<< orphan*/ *,unsigned int,unsigned int*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,unsigned int,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*) ; 

__attribute__((used)) static inline void FUNC4(struct ieee80211_local *local,
					unsigned int changed_flags,
					unsigned int *total_flags,
					u64 multicast)
{
	FUNC0();

	FUNC2(local, changed_flags, total_flags,
				   multicast);
	local->ops->configure_filter(&local->hw, changed_flags, total_flags,
				     multicast);
	FUNC3(local);
}