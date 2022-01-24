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
struct vlan_dev_priv {int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  vlan_proto; int /*<<< orphan*/  flags; struct net_device* real_dev; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int priv_flags; unsigned int mtu; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int IFF_XMIT_DST_RELEASE ; 
 size_t IFLA_LINK ; 
 size_t IFLA_MTU ; 
 size_t IFLA_VLAN_ID ; 
 size_t IFLA_VLAN_PROTOCOL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  VLAN_FLAG_REORDER_HDR ; 
 unsigned int VLAN_HLEN ; 
 struct net_device* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 int FUNC7 (struct net_device*,struct netlink_ext_ack*) ; 
 int FUNC8 (struct net_device*,struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ; 
 int FUNC9 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct vlan_dev_priv* FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net *src_net, struct net_device *dev,
			struct nlattr *tb[], struct nlattr *data[],
			struct netlink_ext_ack *extack)
{
	struct vlan_dev_priv *vlan = FUNC10(dev);
	struct net_device *real_dev;
	unsigned int max_mtu;
	__be16 proto;
	int err;

	if (!data[IFLA_VLAN_ID]) {
		FUNC0(extack, "VLAN id not specified");
		return -EINVAL;
	}

	if (!tb[IFLA_LINK]) {
		FUNC0(extack, "link not specified");
		return -EINVAL;
	}

	real_dev = FUNC1(src_net, FUNC6(tb[IFLA_LINK]));
	if (!real_dev) {
		FUNC0(extack, "link does not exist");
		return -ENODEV;
	}

	if (data[IFLA_VLAN_PROTOCOL])
		proto = FUNC4(data[IFLA_VLAN_PROTOCOL]);
	else
		proto = FUNC2(ETH_P_8021Q);

	vlan->vlan_proto = proto;
	vlan->vlan_id	 = FUNC5(data[IFLA_VLAN_ID]);
	vlan->real_dev	 = real_dev;
	dev->priv_flags |= (real_dev->priv_flags & IFF_XMIT_DST_RELEASE);
	vlan->flags	 = VLAN_FLAG_REORDER_HDR;

	err = FUNC9(real_dev, vlan->vlan_proto, vlan->vlan_id,
				  extack);
	if (err < 0)
		return err;

	max_mtu = FUNC3(real_dev) ? real_dev->mtu - VLAN_HLEN :
						     real_dev->mtu;
	if (!tb[IFLA_MTU])
		dev->mtu = max_mtu;
	else if (dev->mtu > max_mtu)
		return -EINVAL;

	err = FUNC8(dev, tb, data, extack);
	if (err < 0)
		return err;

	return FUNC7(dev, extack);
}