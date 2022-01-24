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
struct net_bridge_port {unsigned long flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge_port*,unsigned long) ; 

__attribute__((used)) static int FUNC1(struct net_bridge_port *p, unsigned long v,
		      unsigned long mask)
{
	unsigned long flags;

	flags = p->flags;

	if (v)
		flags |= mask;
	else
		flags &= ~mask;

	if (flags != p->flags) {
		p->flags = flags;
		FUNC0(p, mask);
	}
	return 0;
}