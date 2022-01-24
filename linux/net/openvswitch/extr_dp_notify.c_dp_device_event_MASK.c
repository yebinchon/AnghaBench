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
struct vport {int dummy; } ;
struct ovs_net {int /*<<< orphan*/  dp_notify_work; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned long NETDEV_UNREGISTER ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct ovs_net* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  ovs_net_id ; 
 int /*<<< orphan*/  FUNC4 (struct vport*) ; 
 struct vport* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_wq ; 

__attribute__((used)) static int FUNC7(struct notifier_block *unused, unsigned long event,
			   void *ptr)
{
	struct ovs_net *ovs_net;
	struct net_device *dev = FUNC2(ptr);
	struct vport *vport = NULL;

	if (!FUNC3(dev))
		vport = FUNC5(dev);

	if (!vport)
		return NOTIFY_DONE;

	if (event == NETDEV_UNREGISTER) {
		/* upper_dev_unlink and decrement promisc immediately */
		FUNC4(vport);

		/* schedule vport destroy, dev_put and genl notification */
		ovs_net = FUNC1(FUNC0(dev), ovs_net_id);
		FUNC6(system_wq, &ovs_net->dp_notify_work);
	}

	return NOTIFY_DONE;
}