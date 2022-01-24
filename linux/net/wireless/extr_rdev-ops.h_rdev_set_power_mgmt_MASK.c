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
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_power_mgmt ) (int /*<<< orphan*/ *,struct net_device*,int,int) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct net_device*,int,int) ; 

__attribute__((used)) static inline int FUNC3(struct cfg80211_registered_device *rdev,
				      struct net_device *dev, bool enabled,
				      int timeout)
{
	int ret;
	FUNC2(&rdev->wiphy, dev, enabled, timeout);
	ret = rdev->ops->set_power_mgmt(&rdev->wiphy, dev, enabled, timeout);
	FUNC1(&rdev->wiphy, ret);
	return ret;
}