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
struct dn_neigh {scalar_t__ priority; int /*<<< orphan*/  addr; } ;
struct dn_ifaddr {int /*<<< orphan*/  ifa_local; } ;
struct TYPE_2__ {scalar_t__ priority; } ;
struct dn_dev {TYPE_1__ parms; int /*<<< orphan*/  router; scalar_t__ uptime; } ;

/* Variables and functions */
 scalar_t__ DRDELAY ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct dn_neigh *dn, struct dn_dev *dn_db, struct dn_ifaddr *ifa)
{
	/* First check time since device went up */
	if (FUNC1(jiffies, dn_db->uptime + DRDELAY))
		return 0;

	/* If there is no router, then yes... */
	if (!dn_db->router)
		return 1;

	/* otherwise only if we have a higher priority or.. */
	if (dn->priority < dn_db->parms.priority)
		return 1;

	/* if we have equal priority and a higher node number */
	if (dn->priority != dn_db->parms.priority)
		return 0;

	if (FUNC0(dn->addr) < FUNC0(ifa->ifa_local))
		return 1;

	return 0;
}