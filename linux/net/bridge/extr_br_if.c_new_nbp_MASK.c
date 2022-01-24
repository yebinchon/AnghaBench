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
struct net_device {int dummy; } ;
struct net_bridge_port {int priority; int port_no; int flags; int /*<<< orphan*/  path_cost; struct net_device* dev; struct net_bridge* br; } ;
struct net_bridge {int dummy; } ;

/* Variables and functions */
 int BR_BCAST_FLOOD ; 
 int BR_FLOOD ; 
 int BR_LEARNING ; 
 int BR_MCAST_FLOOD ; 
 int BR_PORT_BITS ; 
 int /*<<< orphan*/  BR_STATE_DISABLED ; 
 int ENOMEM ; 
 struct net_bridge_port* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_port*) ; 
 int FUNC2 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_bridge_port*) ; 
 struct net_bridge_port* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static struct net_bridge_port *FUNC11(struct net_bridge *br,
				       struct net_device *dev)
{
	struct net_bridge_port *p;
	int index, err;

	index = FUNC7(br);
	if (index < 0)
		return FUNC0(index);

	p = FUNC9(sizeof(*p), GFP_KERNEL);
	if (p == NULL)
		return FUNC0(-ENOMEM);

	p->br = br;
	FUNC5(dev);
	p->dev = dev;
	p->path_cost = FUNC10(dev);
	p->priority = 0x8000 >> BR_PORT_BITS;
	p->port_no = index;
	p->flags = BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD | BR_BCAST_FLOOD;
	FUNC1(p);
	FUNC3(p, BR_STATE_DISABLED);
	FUNC4(p);
	err = FUNC2(p);
	if (err) {
		FUNC6(dev);
		FUNC8(p);
		p = FUNC0(err);
	}

	return p;
}