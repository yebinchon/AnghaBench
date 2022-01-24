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
struct vport_parms {int /*<<< orphan*/  name; struct nlattr* options; int /*<<< orphan*/  dp; } ;
struct vport {int flags; } ;
struct nlattr {int dummy; } ;
struct net_device {int flags; } ;
struct net {int dummy; } ;
struct geneve_port {int /*<<< orphan*/  dst_port; } ;

/* Variables and functions */
 int EINVAL ; 
 struct vport* FUNC0 (struct vport*) ; 
 struct vport* FUNC1 (int) ; 
 int IFF_UP ; 
 scalar_t__ FUNC2 (struct vport*) ; 
 int /*<<< orphan*/  NET_NAME_USER ; 
 int /*<<< orphan*/  OVS_TUNNEL_ATTR_DST_PORT ; 
 int FUNC3 (struct vport*,int,int /*<<< orphan*/ *) ; 
 struct vport* FUNC4 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct geneve_port* FUNC5 (struct vport*) ; 
 struct nlattr* FUNC6 (struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 int FUNC8 (struct nlattr*) ; 
 struct net* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ovs_geneve_vport_ops ; 
 struct vport* FUNC10 (int,int /*<<< orphan*/ *,struct vport_parms const*) ; 
 int /*<<< orphan*/  FUNC11 (struct vport*) ; 
 int /*<<< orphan*/  FUNC12 (struct vport*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static struct vport *FUNC15(const struct vport_parms *parms)
{
	struct net *net = FUNC9(parms->dp);
	struct nlattr *options = parms->options;
	struct geneve_port *geneve_port;
	struct net_device *dev;
	struct vport *vport;
	struct nlattr *a;
	u16 dst_port;
	int err;

	if (!options) {
		err = -EINVAL;
		goto error;
	}

	a = FUNC6(options, OVS_TUNNEL_ATTR_DST_PORT);
	if (a && FUNC8(a) == sizeof(u16)) {
		dst_port = FUNC7(a);
	} else {
		/* Require destination port from userspace. */
		err = -EINVAL;
		goto error;
	}

	vport = FUNC10(sizeof(struct geneve_port),
				&ovs_geneve_vport_ops, parms);
	if (FUNC2(vport))
		return vport;

	geneve_port = FUNC5(vport);
	geneve_port->dst_port = dst_port;

	FUNC13();
	dev = FUNC4(net, parms->name, NET_NAME_USER, dst_port);
	if (FUNC2(dev)) {
		FUNC14();
		FUNC11(vport);
		return FUNC0(dev);
	}

	err = FUNC3(dev, dev->flags | IFF_UP, NULL);
	if (err < 0) {
		FUNC12(dev);
		FUNC14();
		FUNC11(vport);
		goto error;
	}

	FUNC14();
	return vport;
error:
	return FUNC1(err);
}