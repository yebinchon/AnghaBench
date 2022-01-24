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
struct wireless_dev {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; TYPE_1__* ops; } ;
struct cfg80211_mgmt_tx_params {int dummy; } ;
struct TYPE_2__ {int (* mgmt_tx ) (int /*<<< orphan*/ *,struct wireless_dev*,struct cfg80211_mgmt_tx_params*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct wireless_dev*,struct cfg80211_mgmt_tx_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct wireless_dev*,struct cfg80211_mgmt_tx_params*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct cfg80211_registered_device *rdev,
			       struct wireless_dev *wdev,
			       struct cfg80211_mgmt_tx_params *params,
			       u64 *cookie)
{
	int ret;
	FUNC1(&rdev->wiphy, wdev, params);
	ret = rdev->ops->mgmt_tx(&rdev->wiphy, wdev, params, cookie);
	FUNC2(&rdev->wiphy, ret, *cookie);
	return ret;
}