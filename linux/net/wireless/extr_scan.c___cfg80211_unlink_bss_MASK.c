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
struct cfg80211_registered_device {scalar_t__ bss_entries; int /*<<< orphan*/  bss_list; int /*<<< orphan*/  bss_tree; int /*<<< orphan*/  bss_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  nontrans_list; int /*<<< orphan*/  hidden_beacon_bss; } ;
struct cfg80211_internal_bss {int /*<<< orphan*/  rbn; TYPE_1__ pub; int /*<<< orphan*/  list; int /*<<< orphan*/  hidden_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_registered_device*,struct cfg80211_internal_bss*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct cfg80211_registered_device *rdev,
				  struct cfg80211_internal_bss *bss)
{
	FUNC4(&rdev->bss_lock);

	if (!FUNC3(&bss->hidden_list)) {
		/*
		 * don't remove the beacon entry if it has
		 * probe responses associated with it
		 */
		if (!bss->pub.hidden_beacon_bss)
			return false;
		/*
		 * if it's a probe response entry break its
		 * link to the other entries in the group
		 */
		FUNC2(&bss->hidden_list);
	}

	FUNC2(&bss->list);
	FUNC2(&bss->pub.nontrans_list);
	FUNC5(&bss->rbn, &rdev->bss_tree);
	rdev->bss_entries--;
	FUNC0((rdev->bss_entries == 0) ^ FUNC3(&rdev->bss_list),
		  "rdev bss entries[%d]/list[empty:%d] corruption\n",
		  rdev->bss_entries, FUNC3(&rdev->bss_list));
	FUNC1(rdev, bss);
	return true;
}