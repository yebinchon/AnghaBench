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
struct hsr_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  hsr_handle_frame ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ,struct hsr_port*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct hsr_port *port)
{
	int res;

	FUNC1(dev);
	res = FUNC3(dev, 1);
	if (res)
		goto fail_promiscuity;

	/* FIXME:
	 * What does net device "adjacency" mean? Should we do
	 * res = netdev_master_upper_dev_link(port->dev, port->hsr->dev); ?
	 */

	res = FUNC4(dev, hsr_handle_frame, port);
	if (res)
		goto fail_rx_handler;
	FUNC0(dev);

	return 0;

fail_rx_handler:
	FUNC3(dev, -1);
fail_promiscuity:
	FUNC2(dev);

	return res;
}