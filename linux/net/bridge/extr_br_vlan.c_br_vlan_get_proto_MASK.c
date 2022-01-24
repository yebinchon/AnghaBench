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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct net_bridge {int /*<<< orphan*/  vlan_proto; } ;

/* Variables and functions */
 struct net_bridge* FUNC0 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(const struct net_device *dev, u16 *p_proto)
{
	struct net_bridge *br = FUNC0(dev);

	*p_proto = FUNC1(br->vlan_proto);

	return 0;
}