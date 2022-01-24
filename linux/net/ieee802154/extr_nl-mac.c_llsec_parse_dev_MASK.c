#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ieee802154_llsec_device {int seclevel_exempt; scalar_t__ key_mode; int /*<<< orphan*/  frame_counter; int /*<<< orphan*/  hwaddr; void* short_addr; void* pan_id; } ;
struct genl_info {scalar_t__* attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IEEE802154_ADDR_UNDEF ; 
 size_t IEEE802154_ATTR_HW_ADDR ; 
 size_t IEEE802154_ATTR_LLSEC_DEV_KEY_MODE ; 
 size_t IEEE802154_ATTR_LLSEC_DEV_OVERRIDE ; 
 size_t IEEE802154_ATTR_LLSEC_FRAME_COUNTER ; 
 size_t IEEE802154_ATTR_PAN_ID ; 
 size_t IEEE802154_ATTR_SHORT_ADDR ; 
 scalar_t__ __IEEE802154_LLSEC_DEVKEY_MAX ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee802154_llsec_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct genl_info *info,
		struct ieee802154_llsec_device *dev)
{
	FUNC1(dev, 0, sizeof(*dev));

	if (!info->attrs[IEEE802154_ATTR_LLSEC_FRAME_COUNTER] ||
	    !info->attrs[IEEE802154_ATTR_HW_ADDR] ||
	    !info->attrs[IEEE802154_ATTR_LLSEC_DEV_OVERRIDE] ||
	    !info->attrs[IEEE802154_ATTR_LLSEC_DEV_KEY_MODE] ||
	    (!!info->attrs[IEEE802154_ATTR_PAN_ID] !=
	     !!info->attrs[IEEE802154_ATTR_SHORT_ADDR]))
		return -EINVAL;

	if (info->attrs[IEEE802154_ATTR_PAN_ID]) {
		dev->pan_id = FUNC3(info->attrs[IEEE802154_ATTR_PAN_ID]);
		dev->short_addr = FUNC3(info->attrs[IEEE802154_ATTR_SHORT_ADDR]);
	} else {
		dev->short_addr = FUNC0(IEEE802154_ADDR_UNDEF);
	}

	dev->hwaddr = FUNC2(info->attrs[IEEE802154_ATTR_HW_ADDR]);
	dev->frame_counter = FUNC4(info->attrs[IEEE802154_ATTR_LLSEC_FRAME_COUNTER]);
	dev->seclevel_exempt = !!FUNC5(info->attrs[IEEE802154_ATTR_LLSEC_DEV_OVERRIDE]);
	dev->key_mode = FUNC5(info->attrs[IEEE802154_ATTR_LLSEC_DEV_KEY_MODE]);

	if (dev->key_mode >= __IEEE802154_LLSEC_DEVKEY_MAX)
		return -EINVAL;

	return 0;
}