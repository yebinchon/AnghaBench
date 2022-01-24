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
struct wireless_dev {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; TYPE_1__* ops; } ;
struct cfg80211_pmsr_request {int /*<<< orphan*/  cookie; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* abort_pmsr ) (int /*<<< orphan*/ *,struct wireless_dev*,struct cfg80211_pmsr_request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct wireless_dev*,struct cfg80211_pmsr_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct wireless_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(struct cfg80211_registered_device *rdev,
		struct wireless_dev *wdev,
		struct cfg80211_pmsr_request *request)
{
	FUNC1(&rdev->wiphy, wdev, request->cookie);
	if (rdev->ops->abort_pmsr)
		rdev->ops->abort_pmsr(&rdev->wiphy, wdev, request);
	FUNC2(&rdev->wiphy);
}