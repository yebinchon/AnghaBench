#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nl802154_dump_wpan_phy_state {int filter_wpan_phy; } ;
struct netlink_callback {int /*<<< orphan*/  nlh; } ;
struct net_device {TYPE_1__* ieee802154_ptr; } ;
struct cfg802154_registered_device {int wpan_phy_idx; } ;
struct TYPE_5__ {int /*<<< orphan*/  maxattr; scalar_t__ hdrsize; } ;
struct TYPE_4__ {int /*<<< orphan*/  wpan_phy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ GENL_HDRLEN ; 
 size_t NL802154_ATTR_IFINDEX ; 
 size_t NL802154_ATTR_WPAN_DEV ; 
 size_t NL802154_ATTR_WPAN_PHY ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct nlattr** FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  init_net ; 
 TYPE_2__ nl802154_fam ; 
 int /*<<< orphan*/  nl802154_policy ; 
 void* FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cfg802154_registered_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb,
					struct netlink_callback *cb,
					struct nl802154_dump_wpan_phy_state *state)
{
	struct nlattr **tb = FUNC1(&nl802154_fam);
	int ret = FUNC4(cb->nlh,
					 GENL_HDRLEN + nl802154_fam.hdrsize,
					 tb, nl802154_fam.maxattr,
					 nl802154_policy, NULL);

	/* TODO check if we can handle error here,
	 * we have no backward compatibility
	 */
	if (ret)
		return 0;

	if (tb[NL802154_ATTR_WPAN_PHY])
		state->filter_wpan_phy = FUNC2(tb[NL802154_ATTR_WPAN_PHY]);
	if (tb[NL802154_ATTR_WPAN_DEV])
		state->filter_wpan_phy = FUNC3(tb[NL802154_ATTR_WPAN_DEV]) >> 32;
	if (tb[NL802154_ATTR_IFINDEX]) {
		struct net_device *netdev;
		struct cfg802154_registered_device *rdev;
		int ifidx = FUNC2(tb[NL802154_ATTR_IFINDEX]);

		netdev = FUNC0(&init_net, ifidx);
		if (!netdev)
			return -ENODEV;
		if (netdev->ieee802154_ptr) {
			rdev = FUNC5(
					netdev->ieee802154_ptr->wpan_phy);
			state->filter_wpan_phy = rdev->wpan_phy_idx;
		}
	}

	return 0;
}