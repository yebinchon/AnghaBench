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
struct wpan_dev {int /*<<< orphan*/  wpan_phy; struct wpan_dev* netdev; } ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  wpan_phy; struct net_device* netdev; } ;
struct genl_ops {int internal_flags; } ;
struct genl_info {struct wpan_dev** user_ptr; int /*<<< orphan*/  attrs; } ;
struct cfg802154_registered_device {int /*<<< orphan*/  wpan_phy; struct cfg802154_registered_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int ENETDOWN ; 
 scalar_t__ FUNC1 (struct wpan_dev*) ; 
 int NL802154_FLAG_CHECK_NETDEV_UP ; 
 int NL802154_FLAG_NEED_NETDEV ; 
 int NL802154_FLAG_NEED_RTNL ; 
 int NL802154_FLAG_NEED_WPAN_DEV ; 
 int NL802154_FLAG_NEED_WPAN_PHY ; 
 int FUNC2 (struct wpan_dev*) ; 
 struct wpan_dev* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpan_dev* FUNC4 (int /*<<< orphan*/ ,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpan_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpan_dev*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct wpan_dev* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(const struct genl_ops *ops, struct sk_buff *skb,
			     struct genl_info *info)
{
	struct cfg802154_registered_device *rdev;
	struct wpan_dev *wpan_dev;
	struct net_device *dev;
	bool rtnl = ops->internal_flags & NL802154_FLAG_NEED_RTNL;

	if (rtnl)
		FUNC8();

	if (ops->internal_flags & NL802154_FLAG_NEED_WPAN_PHY) {
		rdev = FUNC4(FUNC6(info), info);
		if (FUNC1(rdev)) {
			if (rtnl)
				FUNC9();
			return FUNC2(rdev);
		}
		info->user_ptr[0] = rdev;
	} else if (ops->internal_flags & NL802154_FLAG_NEED_NETDEV ||
		   ops->internal_flags & NL802154_FLAG_NEED_WPAN_DEV) {
		FUNC0();
		wpan_dev = FUNC3(FUNC6(info),
							   info->attrs);
		if (FUNC1(wpan_dev)) {
			if (rtnl)
				FUNC9();
			return FUNC2(wpan_dev);
		}

		dev = wpan_dev->netdev;
		rdev = FUNC10(wpan_dev->wpan_phy);

		if (ops->internal_flags & NL802154_FLAG_NEED_NETDEV) {
			if (!dev) {
				if (rtnl)
					FUNC9();
				return -EINVAL;
			}

			info->user_ptr[1] = dev;
		} else {
			info->user_ptr[1] = wpan_dev;
		}

		if (dev) {
			if (ops->internal_flags & NL802154_FLAG_CHECK_NETDEV_UP &&
			    !FUNC7(dev)) {
				if (rtnl)
					FUNC9();
				return -ENETDOWN;
			}

			FUNC5(dev);
		}

		info->user_ptr[0] = rdev;
	}

	return 0;
}