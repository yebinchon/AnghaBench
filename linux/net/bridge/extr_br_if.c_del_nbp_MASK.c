#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  name; } ;
struct net_bridge_port {int /*<<< orphan*/  rcu; int /*<<< orphan*/  kobj; int /*<<< orphan*/  list; struct net_device* dev; struct net_bridge* br; } ;
struct net_bridge {TYPE_1__* dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  ifobj; } ;
struct TYPE_2__ {scalar_t__ needed_headroom; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_BRIDGE_PORT ; 
 int /*<<< orphan*/  KOBJ_REMOVE ; 
 int /*<<< orphan*/  RTM_DELLINK ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,struct net_bridge_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  destroy_nbp_rcu ; 
 int /*<<< orphan*/  FUNC6 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_bridge_port*) ; 
 scalar_t__ FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct net_bridge*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC23(struct net_bridge_port *p)
{
	struct net_bridge *br = p->br;
	struct net_device *dev = p->dev;

	FUNC21(br->ifobj, p->dev->name);

	FUNC11(p);

	FUNC18(&br->lock);
	FUNC4(p);
	FUNC19(&br->lock);

	FUNC1(RTM_DELLINK, NULL, p);

	FUNC9(&p->list);
	if (FUNC14(dev) == br->dev->needed_headroom)
		FUNC22(br, FUNC6(br));
	FUNC15(dev);

	FUNC13(p);
	FUNC0(br, p, 0, 1);
	FUNC20();
	FUNC10(p);

	FUNC12(br);

	FUNC17(dev, br->dev);

	dev->priv_flags &= ~IFF_BRIDGE_PORT;

	FUNC16(dev);

	FUNC2(p);

	FUNC8(&p->kobj, KOBJ_REMOVE);
	FUNC7(&p->kobj);

	FUNC3(p);

	FUNC5(&p->rcu, destroy_nbp_rcu);
}