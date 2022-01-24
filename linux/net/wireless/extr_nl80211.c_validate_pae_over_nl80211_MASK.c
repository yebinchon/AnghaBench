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
struct genl_info {int /*<<< orphan*/ * attrs; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_control_port; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct genl_info*,char*) ; 
 size_t NL80211_ATTR_SOCKET_OWNER ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_CONTROL_PORT_OVER_NL80211 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cfg80211_registered_device *rdev,
				     struct genl_info *info)
{
	if (!info->attrs[NL80211_ATTR_SOCKET_OWNER]) {
		FUNC0(info, "SOCKET_OWNER not set");
		return -EINVAL;
	}

	if (!rdev->ops->tx_control_port ||
	    !FUNC1(&rdev->wiphy,
				     NL80211_EXT_FEATURE_CONTROL_PORT_OVER_NL80211))
		return -EOPNOTSUPP;

	return 0;
}