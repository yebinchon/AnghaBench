#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  state; int /*<<< orphan*/  ifindex; int /*<<< orphan*/ * netdev_ops; scalar_t__ dev_addr; int /*<<< orphan*/  addr_assign_type; } ;
struct lowpan_btle_dev {int /*<<< orphan*/  list; int /*<<< orphan*/  peers; TYPE_1__* hdev; struct net_device* netdev; } ;
struct l2cap_chan {int /*<<< orphan*/  src_type; int /*<<< orphan*/  src; int /*<<< orphan*/  dst_type; int /*<<< orphan*/  dst; TYPE_3__* conn; } ;
struct TYPE_6__ {TYPE_2__* hcon; } ;
struct TYPE_5__ {TYPE_1__* hdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IFACE_NAME_TEMPLATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOWPAN_LLTYPE_BTLE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  NET_ADDR_PERM ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __LINK_STATE_PRESENT ; 
 struct net_device* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bt_6lowpan_devices ; 
 int /*<<< orphan*/  bt_type ; 
 int /*<<< orphan*/  devices_lock ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct lowpan_btle_dev* FUNC11 (struct net_device*) ; 
 int FUNC12 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netdev_ops ; 
 int /*<<< orphan*/  netdev_setup ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct l2cap_chan *chan, struct lowpan_btle_dev **dev)
{
	struct net_device *netdev;
	int err = 0;

	netdev = FUNC6(FUNC3(sizeof(struct lowpan_btle_dev)),
			      IFACE_NAME_TEMPLATE, NET_NAME_UNKNOWN,
			      netdev_setup);
	if (!netdev)
		return -ENOMEM;

	netdev->addr_assign_type = NET_ADDR_PERM;
	FUNC7((void *)netdev->dev_addr, &chan->src);

	netdev->netdev_ops = &netdev_ops;
	FUNC4(netdev, &chan->conn->hcon->hdev->dev);
	FUNC5(netdev, &bt_type);

	*dev = FUNC11(netdev);
	(*dev)->netdev = netdev;
	(*dev)->hdev = chan->conn->hcon->hdev;
	FUNC2(&(*dev)->peers);

	FUNC14(&devices_lock);
	FUNC2(&(*dev)->list);
	FUNC9(&(*dev)->list, &bt_6lowpan_devices);
	FUNC15(&devices_lock);

	err = FUNC12(netdev, LOWPAN_LLTYPE_BTLE);
	if (err < 0) {
		FUNC1("register_netdev failed %d", err);
		FUNC14(&devices_lock);
		FUNC10(&(*dev)->list);
		FUNC15(&devices_lock);
		FUNC8(netdev);
		goto out;
	}

	FUNC0("ifindex %d peer bdaddr %pMR type %d my addr %pMR type %d",
	       netdev->ifindex, &chan->dst, chan->dst_type,
	       &chan->src, chan->src_type);
	FUNC13(__LINK_STATE_PRESENT, &netdev->state);

	return 0;

out:
	return err;
}