#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int flags; int /*<<< orphan*/  ip_ptr; } ;
struct TYPE_6__ {int /*<<< orphan*/ * sysctl; } ;
struct in_device {int dead; int /*<<< orphan*/  refcnt; TYPE_2__ cnf; int /*<<< orphan*/  arp_parms; struct net_device* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  devconf_dflt; } ;
struct TYPE_7__ {TYPE_1__ ipv4; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 struct in_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FORWARDING ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFF_UP ; 
 scalar_t__ FUNC2 (TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arp_tbl ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 TYPE_3__* FUNC5 (struct net_device*) ; 
 int FUNC6 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct in_device*) ; 
 struct in_device* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct in_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct in_device *FUNC16(struct net_device *dev)
{
	struct in_device *in_dev;
	int err = -ENOMEM;

	FUNC0();

	in_dev = FUNC11(sizeof(*in_dev), GFP_KERNEL);
	if (!in_dev)
		goto out;
	FUNC12(&in_dev->cnf, FUNC5(dev)->ipv4.devconf_dflt,
			sizeof(in_dev->cnf));
	in_dev->cnf.sysctl = NULL;
	in_dev->dev = dev;
	in_dev->arp_parms = FUNC13(dev, &arp_tbl);
	if (!in_dev->arp_parms)
		goto out_kfree;
	if (FUNC2(in_dev->cnf, FORWARDING))
		FUNC3(dev);
	/* Reference in_dev->dev */
	FUNC4(dev);
	/* Account for reference dev->ip_ptr (below) */
	FUNC15(&in_dev->refcnt, 1);

	err = FUNC6(in_dev);
	if (err) {
		in_dev->dead = 1;
		FUNC7(in_dev);
		in_dev = NULL;
		goto out;
	}
	FUNC8(in_dev);
	if (dev->flags & IFF_UP)
		FUNC9(in_dev);

	/* we can receive as soon as ip_ptr is set -- do this last */
	FUNC14(dev->ip_ptr, in_dev);
out:
	return in_dev ?: FUNC1(err);
out_kfree:
	FUNC10(in_dev);
	in_dev = NULL;
	goto out;
}