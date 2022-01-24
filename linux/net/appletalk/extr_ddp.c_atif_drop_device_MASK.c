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
struct net_device {int /*<<< orphan*/ * atalk_ptr; } ;
struct atalk_iface {struct atalk_iface* next; struct net_device* dev; } ;

/* Variables and functions */
 struct atalk_iface* atalk_interfaces ; 
 int /*<<< orphan*/  atalk_interfaces_lock ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct atalk_iface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct atalk_iface **iface = &atalk_interfaces;
	struct atalk_iface *tmp;

	FUNC2(&atalk_interfaces_lock);
	while ((tmp = *iface) != NULL) {
		if (tmp->dev == dev) {
			*iface = tmp->next;
			FUNC0(dev);
			FUNC1(tmp);
			dev->atalk_ptr = NULL;
		} else
			iface = &tmp->next;
	}
	FUNC3(&atalk_interfaces_lock);
}