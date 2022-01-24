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
struct net_bridge_mdb_entry {int host_joined; TYPE_1__* br; int /*<<< orphan*/  timer; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {scalar_t__ multicast_membership_interval; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTM_NEWMDB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC2(struct net_bridge_mdb_entry *mp, bool notify)
{
	if (!mp->host_joined) {
		mp->host_joined = true;
		if (notify)
			FUNC0(mp->br->dev, NULL, &mp->addr,
				      RTM_NEWMDB, 0);
	}
	FUNC1(&mp->timer, jiffies + mp->br->multicast_membership_interval);
}