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
struct net_device {int /*<<< orphan*/  rx_handler_data; int /*<<< orphan*/  rx_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct net_device *dev)
{

	FUNC0();
	FUNC1(dev->rx_handler, NULL);
	/* a reader seeing a non NULL rx_handler in a rcu_read_lock()
	 * section has a guarantee to see a non NULL rx_handler_data
	 * as well.
	 */
	FUNC2();
	FUNC1(dev->rx_handler_data, NULL);
}