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
struct pktgen_net {scalar_t__ pktgen_exiting; } ;
struct notifier_block {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
#define  NETDEV_CHANGENAME 129 
#define  NETDEV_UNREGISTER 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct pktgen_net* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (void*) ; 
 int /*<<< orphan*/  pg_net_id ; 
 int /*<<< orphan*/  FUNC3 (struct pktgen_net*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pktgen_net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *unused,
			       unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC2(ptr);
	struct pktgen_net *pn = FUNC1(FUNC0(dev), pg_net_id);

	if (pn->pktgen_exiting)
		return NOTIFY_DONE;

	/* It is OK that we do not hold the group lock right now,
	 * as we run under the RTNL lock.
	 */

	switch (event) {
	case NETDEV_CHANGENAME:
		FUNC3(pn, dev);
		break;

	case NETDEV_UNREGISTER:
		FUNC4(pn, dev->name);
		break;
	}

	return NOTIFY_DONE;
}