#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wpan_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ min_frame_retries; scalar_t__ max_frame_retries; } ;
struct TYPE_4__ {TYPE_1__ supported; } ;
struct net_device {TYPE_2__ wpan_phy; struct wpan_dev* ieee802154_ptr; } ;
struct genl_info {int /*<<< orphan*/ * attrs; struct net_device** user_ptr; } ;
struct cfg802154_registered_device {TYPE_2__ wpan_phy; struct wpan_dev* ieee802154_ptr; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 size_t NL802154_ATTR_MAX_FRAME_RETRIES ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,struct wpan_dev*,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg802154_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct wpan_dev *wpan_dev = dev->ieee802154_ptr;
	s8 max_frame_retries;

	if (FUNC0(dev))
		return -EBUSY;

	if (!info->attrs[NL802154_ATTR_MAX_FRAME_RETRIES])
		return -EINVAL;

	max_frame_retries = FUNC1(
			info->attrs[NL802154_ATTR_MAX_FRAME_RETRIES]);

	/* check 802.15.4 constraints */
	if (max_frame_retries < rdev->wpan_phy.supported.min_frame_retries ||
	    max_frame_retries > rdev->wpan_phy.supported.max_frame_retries)
		return -EINVAL;

	return FUNC2(rdev, wpan_dev, max_frame_retries);
}