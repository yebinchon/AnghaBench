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
struct wpan_dev {scalar_t__ iftype; struct net_device* lowpan_dev; } ;
struct sk_buff {int dummy; } ;
struct net_device {struct wpan_dev* ieee802154_ptr; } ;
struct genl_info {int /*<<< orphan*/ * attrs; struct net_device** user_ptr; } ;
struct cfg802154_registered_device {struct wpan_dev* ieee802154_ptr; } ;
typedef  scalar_t__ __le16 ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  IEEE802154_ADDR_SHORT_BROADCAST ; 
 int /*<<< orphan*/  IEEE802154_ADDR_SHORT_UNSPEC ; 
 size_t NL802154_ATTR_SHORT_ADDR ; 
 scalar_t__ NL802154_IFTYPE_MONITOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,struct wpan_dev*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg802154_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct wpan_dev *wpan_dev = dev->ieee802154_ptr;
	__le16 short_addr;

	/* conflict here while tx/rx calls */
	if (FUNC1(dev))
		return -EBUSY;

	if (wpan_dev->lowpan_dev) {
		if (FUNC1(wpan_dev->lowpan_dev))
			return -EBUSY;
	}

	/* don't change address fields on monitor */
	if (wpan_dev->iftype == NL802154_IFTYPE_MONITOR ||
	    !info->attrs[NL802154_ATTR_SHORT_ADDR])
		return -EINVAL;

	short_addr = FUNC2(info->attrs[NL802154_ATTR_SHORT_ADDR]);

	/* TODO
	 * I am not sure about to check here on broadcast short_addr.
	 * Broadcast is a valid setting, comment from 802.15.4:
	 * A value of 0xfffe indicates that the device has
	 * associated but has not been allocated an address. A
	 * value of 0xffff indicates that the device does not
	 * have a short address.
	 *
	 * I think we should allow to set these settings but
	 * don't allow to allow socket communication with it.
	 */
	if (short_addr == FUNC0(IEEE802154_ADDR_SHORT_UNSPEC) ||
	    short_addr == FUNC0(IEEE802154_ADDR_SHORT_BROADCAST))
		return -EINVAL;

	return FUNC3(rdev, wpan_dev, short_addr);
}