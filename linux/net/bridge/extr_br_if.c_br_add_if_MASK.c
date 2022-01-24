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
struct netlink_ext_ack {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct net_device {int flags; scalar_t__ type; scalar_t__ addr_len; int priv_flags; unsigned int needed_headroom; scalar_t__ addr_assign_type; int /*<<< orphan*/  dev_addr; TYPE_2__ dev; TYPE_1__* netdev_ops; } ;
struct net_bridge_port {int /*<<< orphan*/  kobj; TYPE_3__* dev; int /*<<< orphan*/  list; } ;
struct net_bridge {int /*<<< orphan*/  ifobj; struct net_device* dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  port_list; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {scalar_t__ ndo_start_xmit; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int EBUSY ; 
 int EINVAL ; 
 int ELOOP ; 
 int EOPNOTSUPP ; 
 scalar_t__ ETH_ALEN ; 
 int IFF_BRIDGE_PORT ; 
 int IFF_DONT_BRIDGE ; 
 int IFF_LOOPBACK ; 
 int IFF_UP ; 
 scalar_t__ FUNC0 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  NETDEV_CHANGEADDR ; 
 int /*<<< orphan*/  NETDEV_JOIN ; 
 scalar_t__ NET_ADDR_SET ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int FUNC2 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int /*<<< orphan*/  SYSFS_BRIDGE_PORT_ATTR ; 
 scalar_t__ br_dev_xmit ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*,struct net_bridge_port*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct net_bridge*,struct net_bridge_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  br_handle_frame ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_bridge_port*) ; 
 int FUNC8 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_bridge_port*) ; 
 int FUNC11 (struct net_bridge*) ; 
 int FUNC12 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  brport_ktype ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int FUNC15 (struct net_device*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int FUNC17 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct net_bridge_port*) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC26 (struct net_bridge*) ; 
 int FUNC27 (struct net_bridge_port*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC28 (struct net_device*,char*) ; 
 unsigned int FUNC29 (struct net_device*) ; 
 scalar_t__ FUNC30 (struct net_device*) ; 
 int FUNC31 (struct net_device*,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct netlink_ext_ack*) ; 
 int FUNC32 (struct net_device*,int /*<<< orphan*/ ,struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC33 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC34 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC35 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC36 (struct net_device*,struct net_device*) ; 
 scalar_t__ FUNC37 (struct net_device*) ; 
 scalar_t__ FUNC38 (struct net_device*) ; 
 scalar_t__ FUNC39 (struct net_device*) ; 
 struct net_bridge_port* FUNC40 (struct net_bridge*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 (struct net_bridge*,unsigned int) ; 

int FUNC45(struct net_bridge *br, struct net_device *dev,
	      struct netlink_ext_ack *extack)
{
	struct net_bridge_port *p;
	int err = 0;
	unsigned br_hr, dev_hr;
	bool changed_addr;

	/* Don't allow bridging non-ethernet like devices, or DSA-enabled
	 * master network devices since the bridge layer rx_handler prevents
	 * the DSA fake ethertype handler to be invoked, so we do not strip off
	 * the DSA switch tag protocol header and the bridge layer just return
	 * RX_HANDLER_CONSUMED, stopping RX processing for these frames.
	 */
	if ((dev->flags & IFF_LOOPBACK) ||
	    dev->type != ARPHRD_ETHER || dev->addr_len != ETH_ALEN ||
	    !FUNC18(dev->dev_addr) ||
	    FUNC37(dev))
		return -EINVAL;

	/* No bridging of bridges */
	if (dev->netdev_ops->ndo_start_xmit == br_dev_xmit) {
		FUNC1(extack,
			       "Can not enslave a bridge to a bridge");
		return -ELOOP;
	}

	/* Device has master upper dev */
	if (FUNC30(dev))
		return -EBUSY;

	/* No bridging devices that dislike that (e.g. wireless) */
	if (dev->priv_flags & IFF_DONT_BRIDGE) {
		FUNC1(extack,
			       "Device does not allow enslaving to a bridge");
		return -EOPNOTSUPP;
	}

	p = FUNC40(br, dev);
	if (FUNC0(p))
		return FUNC2(p);

	FUNC13(NETDEV_JOIN, dev);

	err = FUNC17(dev, 1);
	if (err) {
		FUNC19(p);	/* kobject not yet init'd, manually free */
		goto err1;
	}

	err = FUNC20(&p->kobj, &brport_ktype, &(dev->dev.kobj),
				   SYSFS_BRIDGE_PORT_ATTR);
	if (err)
		goto err2;

	err = FUNC12(p);
	if (err)
		goto err2;

	err = FUNC8(p);
	if (err)
		goto err3;

	err = FUNC32(dev, br_handle_frame, p);
	if (err)
		goto err4;

	dev->priv_flags |= IFF_BRIDGE_PORT;

	err = FUNC31(dev, br->dev, NULL, NULL, extack);
	if (err)
		goto err5;

	err = FUNC25(p);
	if (err)
		goto err6;

	FUNC14(dev);

	FUNC23(&p->list, &br->port_list);

	FUNC26(br);

	FUNC35(br->dev);

	br_hr = br->dev->needed_headroom;
	dev_hr = FUNC29(dev);
	if (br_hr < dev_hr)
		FUNC44(br, dev_hr);
	else
		FUNC34(dev, br_hr);

	if (FUNC4(br, p, dev->dev_addr, 0))
		FUNC28(dev, "failed insert local address bridge forwarding table\n");

	if (br->dev->addr_assign_type != NET_ADDR_SET) {
		/* Ask for permission to use this MAC address now, even if we
		 * don't end up choosing it below.
		 */
		err = FUNC15(br->dev, dev->dev_addr, extack);
		if (err)
			goto err7;
	}

	err = FUNC27(p, extack);
	if (err) {
		FUNC28(dev, "failed to initialize vlan filtering on this port\n");
		goto err7;
	}

	FUNC41(&br->lock);
	changed_addr = FUNC11(br);

	if (FUNC39(dev) && FUNC38(dev) &&
	    (br->dev->flags & IFF_UP))
		FUNC10(p);
	FUNC42(&br->lock);

	FUNC5(RTM_NEWLINK, NULL, p);

	if (changed_addr)
		FUNC13(NETDEV_CHANGEADDR, br->dev);

	FUNC6(br);
	FUNC9(br);

	FUNC22(&p->kobj, KOBJ_ADD);

	return 0;

err7:
	FUNC24(&p->list);
	FUNC3(br, p, 0, 1);
	FUNC26(br);
err6:
	FUNC36(dev, br->dev);
err5:
	dev->priv_flags &= ~IFF_BRIDGE_PORT;
	FUNC33(dev);
err4:
	FUNC7(p);
err3:
	FUNC43(br->ifobj, p->dev->name);
err2:
	FUNC21(&p->kobj);
	FUNC17(dev, -1);
err1:
	FUNC16(dev);
	return err;
}