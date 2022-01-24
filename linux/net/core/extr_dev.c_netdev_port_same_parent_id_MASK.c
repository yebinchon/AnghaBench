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
struct netdev_phys_item_id {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*,struct netdev_phys_item_id*,int) ; 
 int FUNC1 (struct netdev_phys_item_id*,struct netdev_phys_item_id*) ; 

bool FUNC2(struct net_device *a, struct net_device *b)
{
	struct netdev_phys_item_id a_id = { };
	struct netdev_phys_item_id b_id = { };

	if (FUNC0(a, &a_id, true) ||
	    FUNC0(b, &b_id, true))
		return false;

	return FUNC1(&a_id, &b_id);
}