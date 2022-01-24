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
struct cfg80211_scan_request {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* scan ) (int /*<<< orphan*/ *,struct cfg80211_scan_request*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct cfg80211_scan_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cfg80211_scan_request*) ; 

__attribute__((used)) static inline int FUNC3(struct cfg80211_registered_device *rdev,
			    struct cfg80211_scan_request *request)
{
	int ret;
	FUNC2(&rdev->wiphy, request);
	ret = rdev->ops->scan(&rdev->wiphy, request);
	FUNC1(&rdev->wiphy, ret);
	return ret;
}