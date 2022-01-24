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
struct net_device {struct atalk_iface* atalk_ptr; } ;
struct atalk_addr {int dummy; } ;
struct atalk_iface {struct atalk_iface* next; scalar_t__ status; struct atalk_addr address; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct atalk_iface* atalk_interfaces ; 
 int /*<<< orphan*/  atalk_interfaces_lock ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct atalk_iface* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct atalk_iface *FUNC4(struct net_device *dev,
					   struct atalk_addr *sa)
{
	struct atalk_iface *iface = FUNC1(sizeof(*iface), GFP_KERNEL);

	if (!iface)
		goto out;

	FUNC0(dev);
	iface->dev = dev;
	dev->atalk_ptr = iface;
	iface->address = *sa;
	iface->status = 0;

	FUNC2(&atalk_interfaces_lock);
	iface->next = atalk_interfaces;
	atalk_interfaces = iface;
	FUNC3(&atalk_interfaces_lock);
out:
	return iface;
}