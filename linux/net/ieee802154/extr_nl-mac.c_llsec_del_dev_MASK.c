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
struct ieee802154_mlme_ops {TYPE_1__* llsec; } ;
struct genl_info {int /*<<< orphan*/ * attrs; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_2__ {int (* del_dev ) (struct net_device*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 size_t IEEE802154_ATTR_HW_ADDR ; 
 struct ieee802154_mlme_ops* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct genl_info *info)
{
	struct ieee802154_mlme_ops *ops = FUNC0(dev);
	__le64 devaddr;

	if (!info->attrs[IEEE802154_ATTR_HW_ADDR])
		return -EINVAL;

	devaddr = FUNC1(info->attrs[IEEE802154_ATTR_HW_ADDR]);

	return ops->llsec->del_dev(dev, devaddr);
}