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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  NETDEV_UNREGISTER ; 
 int /*<<< orphan*/  __LINK_STATE_LINKWATCH_PENDING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev)
{
	unsigned long rebroadcast_time, warning_time;
	int refcnt;

	FUNC2(dev);

	rebroadcast_time = warning_time = jiffies;
	refcnt = FUNC5(dev);

	while (refcnt != 0) {
		if (FUNC10(jiffies, rebroadcast_time + 1 * HZ)) {
			FUNC8();

			/* Rebroadcast unregister notification */
			FUNC1(NETDEV_UNREGISTER, dev);

			FUNC0();
			FUNC7();
			FUNC8();

			if (FUNC9(__LINK_STATE_LINKWATCH_PENDING,
				     &dev->state)) {
				/* We must not have linkwatch events
				 * pending on unregister. If this
				 * happens, we simply run the queue
				 * unscheduled, resulting in a noop
				 * for this device.
				 */
				FUNC3();
			}

			FUNC0();

			rebroadcast_time = jiffies;
		}

		FUNC4(250);

		refcnt = FUNC5(dev);

		if (refcnt && FUNC10(jiffies, warning_time + 10 * HZ)) {
			FUNC6("unregister_netdevice: waiting for %s to become free. Usage count = %d\n",
				 dev->name, refcnt);
			warning_time = jiffies;
		}
	}
}