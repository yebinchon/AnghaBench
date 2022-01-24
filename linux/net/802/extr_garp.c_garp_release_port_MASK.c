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
struct net_device {int /*<<< orphan*/  garp_port; } ;
struct garp_port {int /*<<< orphan*/ * applicants; } ;

/* Variables and functions */
 unsigned int GARP_APPLICATION_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct garp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 struct garp_port* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct garp_port *port = FUNC2(dev->garp_port);
	unsigned int i;

	for (i = 0; i <= GARP_APPLICATION_MAX; i++) {
		if (FUNC2(port->applicants[i]))
			return;
	}
	FUNC0(dev->garp_port, NULL);
	FUNC1(port, rcu);
}