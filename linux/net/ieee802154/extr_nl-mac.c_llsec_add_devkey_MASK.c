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
struct ieee802154_llsec_device_key {int /*<<< orphan*/  frame_counter; int /*<<< orphan*/  key_id; } ;
struct genl_info {int /*<<< orphan*/ * attrs; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_2__ {int (* add_devkey ) (struct net_device*,int /*<<< orphan*/ ,struct ieee802154_llsec_device_key*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 size_t IEEE802154_ATTR_HW_ADDR ; 
 size_t IEEE802154_ATTR_LLSEC_FRAME_COUNTER ; 
 scalar_t__ FUNC0 (struct genl_info*,int /*<<< orphan*/ *) ; 
 struct ieee802154_mlme_ops* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ,struct ieee802154_llsec_device_key*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct genl_info *info)
{
	struct ieee802154_mlme_ops *ops = FUNC1(dev);
	struct ieee802154_llsec_device_key key;
	__le64 devaddr;

	if (!info->attrs[IEEE802154_ATTR_LLSEC_FRAME_COUNTER] ||
	    !info->attrs[IEEE802154_ATTR_HW_ADDR] ||
	    FUNC0(info, &key.key_id))
		return -EINVAL;

	devaddr = FUNC2(info->attrs[IEEE802154_ATTR_HW_ADDR]);
	key.frame_counter = FUNC3(info->attrs[IEEE802154_ATTR_LLSEC_FRAME_COUNTER]);

	return ops->llsec->add_devkey(dev, devaddr, &key);
}