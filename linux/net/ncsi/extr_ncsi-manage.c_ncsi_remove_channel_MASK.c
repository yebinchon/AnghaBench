#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ncsi_package {int /*<<< orphan*/  lock; int /*<<< orphan*/  channel_num; } ;
struct TYPE_3__ {struct ncsi_channel* vids; } ;
struct TYPE_4__ {struct ncsi_channel* addrs; } ;
struct ncsi_channel {int /*<<< orphan*/  node; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; TYPE_1__ vlan_filter; TYPE_2__ mac_filter; struct ncsi_package* package; } ;

/* Variables and functions */
 int /*<<< orphan*/  NCSI_CHANNEL_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct ncsi_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ncsi_channel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct ncsi_channel *nc)
{
	struct ncsi_package *np = nc->package;
	unsigned long flags;

	FUNC3(&nc->lock, flags);

	/* Release filters */
	FUNC0(nc->mac_filter.addrs);
	FUNC0(nc->vlan_filter.vids);

	nc->state = NCSI_CHANNEL_INACTIVE;
	FUNC4(&nc->lock, flags);
	FUNC2(nc);

	/* Remove and free channel */
	FUNC3(&np->lock, flags);
	FUNC1(&nc->node);
	np->channel_num--;
	FUNC4(&np->lock, flags);

	FUNC0(nc);
}