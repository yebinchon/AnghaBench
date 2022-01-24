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
typedef  int /*<<< orphan*/  u16 ;
struct vxlan_config {int no_share; int flags; int /*<<< orphan*/  dst_port; int /*<<< orphan*/  mtu; } ;
struct vport_parms {int /*<<< orphan*/  name; struct nlattr* options; int /*<<< orphan*/  dp; } ;
struct vport {int flags; } ;
struct nlattr {int dummy; } ;
struct net_device {int flags; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct vport* FUNC0 (struct vport*) ; 
 struct vport* FUNC1 (int) ; 
 int IFF_UP ; 
 int /*<<< orphan*/  IP_MAX_MTU ; 
 scalar_t__ FUNC2 (struct vport*) ; 
 int /*<<< orphan*/  NET_NAME_USER ; 
 int /*<<< orphan*/  OVS_TUNNEL_ATTR_DST_PORT ; 
 int /*<<< orphan*/  OVS_TUNNEL_ATTR_EXTENSION ; 
 int VXLAN_F_COLLECT_METADATA ; 
 int VXLAN_F_UDP_ZERO_CSUM6_RX ; 
 int FUNC3 (struct vport*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct nlattr* FUNC5 (struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 int FUNC7 (struct nlattr*) ; 
 struct net* FUNC8 (int /*<<< orphan*/ ) ; 
 struct vport* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vport_parms const*) ; 
 int /*<<< orphan*/  FUNC10 (struct vport*) ; 
 int /*<<< orphan*/  ovs_vxlan_netdev_vport_ops ; 
 int /*<<< orphan*/  FUNC11 (struct vport*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (struct vport*,struct nlattr*,struct vxlan_config*) ; 
 struct vport* FUNC15 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vxlan_config*) ; 

__attribute__((used)) static struct vport *FUNC16(const struct vport_parms *parms)
{
	struct net *net = FUNC8(parms->dp);
	struct nlattr *options = parms->options;
	struct net_device *dev;
	struct vport *vport;
	struct nlattr *a;
	int err;
	struct vxlan_config conf = {
		.no_share = true,
		.flags = VXLAN_F_COLLECT_METADATA | VXLAN_F_UDP_ZERO_CSUM6_RX,
		/* Don't restrict the packets that can be sent by MTU */
		.mtu = IP_MAX_MTU,
	};

	if (!options) {
		err = -EINVAL;
		goto error;
	}

	a = FUNC5(options, OVS_TUNNEL_ATTR_DST_PORT);
	if (a && FUNC7(a) == sizeof(u16)) {
		conf.dst_port = FUNC4(FUNC6(a));
	} else {
		/* Require destination port from userspace. */
		err = -EINVAL;
		goto error;
	}

	vport = FUNC9(0, &ovs_vxlan_netdev_vport_ops, parms);
	if (FUNC2(vport))
		return vport;

	a = FUNC5(options, OVS_TUNNEL_ATTR_EXTENSION);
	if (a) {
		err = FUNC14(vport, a, &conf);
		if (err) {
			FUNC10(vport);
			goto error;
		}
	}

	FUNC12();
	dev = FUNC15(net, parms->name, NET_NAME_USER, &conf);
	if (FUNC2(dev)) {
		FUNC13();
		FUNC10(vport);
		return FUNC0(dev);
	}

	err = FUNC3(dev, dev->flags | IFF_UP, NULL);
	if (err < 0) {
		FUNC11(dev);
		FUNC13();
		FUNC10(vport);
		goto error;
	}

	FUNC13();
	return vport;
error:
	return FUNC1(err);
}