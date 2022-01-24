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
struct net_device {int dummy; } ;
struct net_bridge_port {TYPE_1__* br; } ;
struct TYPE_2__ {struct net_device* dev; } ;

/* Variables and functions */
 struct net_bridge_port* FUNC0 (struct net_device const*) ; 

__attribute__((used)) static inline struct net_device *FUNC1(const struct net_device *dev)
{
	struct net_bridge_port *port;

	port = FUNC0(dev);
	return port ? port->br->dev : NULL;
}