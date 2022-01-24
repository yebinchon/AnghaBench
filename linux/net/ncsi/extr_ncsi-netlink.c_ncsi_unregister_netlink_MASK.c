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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ncsi_genl_family ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 

int FUNC2(struct net_device *dev)
{
	int rc;

	rc = FUNC0(&ncsi_genl_family);
	if (rc)
		FUNC1(dev, "ncsi: failed to unregister netlink family\n");

	return rc;
}