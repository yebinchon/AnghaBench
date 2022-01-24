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
struct vport_parms {int /*<<< orphan*/  name; int /*<<< orphan*/  dp; } ;
struct vport {int flags; } ;
struct net_device {int flags; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct vport* FUNC0 (struct vport*) ; 
 struct vport* FUNC1 (int) ; 
 int IFF_UP ; 
 scalar_t__ FUNC2 (struct vport*) ; 
 int /*<<< orphan*/  NET_NAME_USER ; 
 int FUNC3 (struct vport*,int,int /*<<< orphan*/ *) ; 
 struct vport* FUNC4 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ovs_gre_vport_ops ; 
 struct vport* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vport_parms const*) ; 
 int /*<<< orphan*/  FUNC7 (struct vport*) ; 
 int /*<<< orphan*/  FUNC8 (struct vport*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static struct vport *FUNC11(const struct vport_parms *parms)
{
	struct net *net = FUNC5(parms->dp);
	struct net_device *dev;
	struct vport *vport;
	int err;

	vport = FUNC6(0, &ovs_gre_vport_ops, parms);
	if (FUNC2(vport))
		return vport;

	FUNC9();
	dev = FUNC4(net, parms->name, NET_NAME_USER);
	if (FUNC2(dev)) {
		FUNC10();
		FUNC7(vport);
		return FUNC0(dev);
	}

	err = FUNC3(dev, dev->flags | IFF_UP, NULL);
	if (err < 0) {
		FUNC8(dev);
		FUNC10();
		FUNC7(vport);
		return FUNC1(err);
	}

	FUNC10();
	return vport;
}