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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  br_vlan_is_bind_vlan_dev_fn ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static bool FUNC3(struct net_device *dev)
{
	int found;

	FUNC1();
	found = FUNC0(dev, br_vlan_is_bind_vlan_dev_fn,
					      NULL);
	FUNC2();

	return !!found;
}