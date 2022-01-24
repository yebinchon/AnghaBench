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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {scalar_t__ type; int neigh_priv_len; TYPE_1__* ieee802154_ptr; int /*<<< orphan*/  needed_tailroom; scalar_t__ needed_headroom; int /*<<< orphan*/  dev_addr; } ;
struct net {int dummy; } ;
struct lowpan_802154_neigh {int dummy; } ;
struct TYPE_4__ {struct net_device* wdev; } ;
struct TYPE_3__ {struct net_device* lowpan_dev; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_IEEE802154 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  IEEE802154_ADDR_LEN ; 
 size_t IFLA_LINK ; 
 scalar_t__ LOWPAN_IPHC_MAX_HEADER_LEN ; 
 int /*<<< orphan*/  LOWPAN_LLTYPE_IEEE802154 ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 TYPE_2__* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct net *src_net, struct net_device *ldev,
			  struct nlattr *tb[], struct nlattr *data[],
			  struct netlink_ext_ack *extack)
{
	struct net_device *wdev;
	int ret;

	FUNC0();

	FUNC8("adding new link\n");

	if (!tb[IFLA_LINK])
		return -EINVAL;
	/* find and hold wpan device */
	wdev = FUNC1(FUNC2(ldev), FUNC7(tb[IFLA_LINK]));
	if (!wdev)
		return -ENODEV;
	if (wdev->type != ARPHRD_IEEE802154) {
		FUNC3(wdev);
		return -EINVAL;
	}

	if (wdev->ieee802154_ptr->lowpan_dev) {
		FUNC3(wdev);
		return -EBUSY;
	}

	FUNC4(ldev)->wdev = wdev;
	/* Set the lowpan hardware address to the wpan hardware address. */
	FUNC6(ldev->dev_addr, wdev->dev_addr, IEEE802154_ADDR_LEN);
	/* We need headroom for possible wpan_dev_hard_header call and tailroom
	 * for encryption/fcs handling. The lowpan interface will replace
	 * the IPv6 header with 6LoWPAN header. At worst case the 6LoWPAN
	 * header has LOWPAN_IPHC_MAX_HEADER_LEN more bytes than the IPv6
	 * header.
	 */
	ldev->needed_headroom = LOWPAN_IPHC_MAX_HEADER_LEN +
				wdev->needed_headroom;
	ldev->needed_tailroom = wdev->needed_tailroom;

	ldev->neigh_priv_len = sizeof(struct lowpan_802154_neigh);

	ret = FUNC5(ldev, LOWPAN_LLTYPE_IEEE802154);
	if (ret < 0) {
		FUNC3(wdev);
		return ret;
	}

	wdev->ieee802154_ptr->lowpan_dev = ldev;
	return 0;
}