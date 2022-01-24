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
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {int dummy; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; } ;
typedef  int /*<<< orphan*/  eth ;

/* Variables and functions */
 int FUNC0 (struct net_bridge*,struct ethhdr*) ; 
 struct net_bridge_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ethhdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

bool FUNC7(struct net_device *dev, int proto)
{
	struct net_bridge *br;
	struct net_bridge_port *port;
	struct ethhdr eth;
	bool ret = false;

	FUNC5();
	if (!FUNC4(dev))
		goto unlock;

	port = FUNC1(dev);
	if (!port || !port->br)
		goto unlock;

	br = port->br;

	FUNC3(&eth, 0, sizeof(eth));
	eth.h_proto = FUNC2(proto);

	ret = FUNC0(br, &eth);

unlock:
	FUNC6();
	return ret;
}