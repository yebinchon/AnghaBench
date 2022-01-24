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
struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ieee802154_ptr; } ;
struct ieee802154_addr {int /*<<< orphan*/  pan_id; int /*<<< orphan*/  extended_addr; int /*<<< orphan*/  mode; } ;
struct genl_info {int /*<<< orphan*/ * attrs; } ;
struct TYPE_4__ {int (* assoc_resp ) (struct net_device*,struct ieee802154_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  pan_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IEEE802154_ADDR_LONG ; 
 size_t IEEE802154_ATTR_DEST_HW_ADDR ; 
 size_t IEEE802154_ATTR_DEST_SHORT_ADDR ; 
 size_t IEEE802154_ATTR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 TYPE_2__* FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct net_device*,struct ieee802154_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct sk_buff *skb, struct genl_info *info)
{
	struct net_device *dev;
	struct ieee802154_addr addr;
	int ret = -EOPNOTSUPP;

	if (!info->attrs[IEEE802154_ATTR_STATUS] ||
	    !info->attrs[IEEE802154_ATTR_DEST_HW_ADDR] ||
	    !info->attrs[IEEE802154_ATTR_DEST_SHORT_ADDR])
		return -EINVAL;

	dev = FUNC2(info);
	if (!dev)
		return -ENODEV;
	if (!FUNC1(dev)->assoc_resp)
		goto out;

	addr.mode = IEEE802154_ADDR_LONG;
	addr.extended_addr = FUNC3(
			info->attrs[IEEE802154_ATTR_DEST_HW_ADDR]);
	FUNC6();
	addr.pan_id = dev->ieee802154_ptr->pan_id;
	FUNC7();

	ret = FUNC1(dev)->assoc_resp(dev, &addr,
		FUNC4(info->attrs[IEEE802154_ATTR_DEST_SHORT_ADDR]),
		FUNC5(info->attrs[IEEE802154_ATTR_STATUS]));

out:
	FUNC0(dev);
	return ret;
}