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
struct netlink_ext_ack {scalar_t__ _msg; } ;
struct net_device {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  extack ;

/* Variables and functions */
 int FUNC0 (struct net_device*,int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC3(struct net_device *dev, int new_mtu)
{
	struct netlink_ext_ack extack;
	int err;

	FUNC1(&extack, 0, sizeof(extack));
	err = FUNC0(dev, new_mtu, &extack);
	if (err && extack._msg)
		FUNC2("%s: %s\n", dev->name, extack._msg);
	return err;
}