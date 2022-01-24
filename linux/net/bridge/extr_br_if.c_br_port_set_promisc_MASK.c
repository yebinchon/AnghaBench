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
struct net_bridge_port {int /*<<< orphan*/  flags; int /*<<< orphan*/  br; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BR_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_bridge_port*) ; 
 scalar_t__ FUNC1 (struct net_bridge_port*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct net_bridge_port *p)
{
	int err = 0;

	if (FUNC1(p))
		return;

	err = FUNC2(p->dev, 1);
	if (err)
		return;

	FUNC0(p->br, p);
	p->flags |= BR_PROMISC;
}