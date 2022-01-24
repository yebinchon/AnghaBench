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
struct TYPE_4__ {scalar_t__ nr_firstnet; scalar_t__ nr_lastnet; } ;
struct TYPE_3__ {int s_node; scalar_t__ s_net; } ;
struct atalk_iface {int status; TYPE_2__ nets; TYPE_1__ address; struct atalk_iface* next; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 scalar_t__ ATADDR_ANYNET ; 
 int ATADDR_ANYNODE ; 
 int ATADDR_BCAST ; 
 int ATIF_PROBE ; 
 struct atalk_iface* atalk_interfaces ; 
 int /*<<< orphan*/  atalk_interfaces_lock ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct atalk_iface *FUNC3(__be16 net, int node)
{
	struct atalk_iface *iface;

	FUNC1(&atalk_interfaces_lock);
	for (iface = atalk_interfaces; iface; iface = iface->next) {
		if ((node == ATADDR_BCAST ||
		     node == ATADDR_ANYNODE ||
		     iface->address.s_node == node) &&
		    iface->address.s_net == net &&
		    !(iface->status & ATIF_PROBE))
			break;

		/* XXXX.0 -- net.0 returns the iface associated with net */
		if (node == ATADDR_ANYNODE && net != ATADDR_ANYNET &&
		    FUNC0(iface->nets.nr_firstnet) <= FUNC0(net) &&
		    FUNC0(net) <= FUNC0(iface->nets.nr_lastnet))
			break;
	}
	FUNC2(&atalk_interfaces_lock);
	return iface;
}