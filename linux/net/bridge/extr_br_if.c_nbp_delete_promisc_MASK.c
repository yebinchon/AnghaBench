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
struct net_bridge_port {int /*<<< orphan*/  br; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_bridge_port*) ; 
 scalar_t__ FUNC1 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct net_bridge_port *p)
{
	/* If port is currently promiscuous, unset promiscuity.
	 * Otherwise, it is a static port so remove all addresses
	 * from it.
	 */
	FUNC2(p->dev, -1);
	if (FUNC1(p))
		FUNC3(p->dev, -1);
	else
		FUNC0(p->br, p);
}