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
struct notifier_block {int dummy; } ;
struct netlbl_unlhsh_iface {int /*<<< orphan*/  rcu; int /*<<< orphan*/  list; scalar_t__ valid; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 unsigned long NETDEV_DOWN ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC4 (void*) ; 
 int /*<<< orphan*/  netlbl_unlhsh_free_iface ; 
 int /*<<< orphan*/  netlbl_unlhsh_lock ; 
 struct netlbl_unlhsh_iface* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct notifier_block *this,
					unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC4(ptr);
	struct netlbl_unlhsh_iface *iface = NULL;

	if (!FUNC3(FUNC1(dev), &init_net))
		return NOTIFY_DONE;

	/* XXX - should this be a check for NETDEV_DOWN or _UNREGISTER? */
	if (event == NETDEV_DOWN) {
		FUNC6(&netlbl_unlhsh_lock);
		iface = FUNC5(dev->ifindex);
		if (iface != NULL && iface->valid) {
			iface->valid = 0;
			FUNC2(&iface->list);
		} else
			iface = NULL;
		FUNC7(&netlbl_unlhsh_lock);
	}

	if (iface != NULL)
		FUNC0(&iface->rcu, netlbl_unlhsh_free_iface);

	return NOTIFY_DONE;
}