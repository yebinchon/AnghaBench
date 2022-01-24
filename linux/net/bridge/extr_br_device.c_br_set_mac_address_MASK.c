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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct net_bridge {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct net_bridge* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, void *p)
{
	struct net_bridge *br = FUNC3(dev);
	struct sockaddr *addr = p;

	if (!FUNC2(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC4(&br->lock);
	if (!FUNC1(dev->dev_addr, addr->sa_data)) {
		/* Mac address will be changed in br_stp_change_bridge_id(). */
		FUNC0(br, addr->sa_data);
	}
	FUNC5(&br->lock);

	return 0;
}