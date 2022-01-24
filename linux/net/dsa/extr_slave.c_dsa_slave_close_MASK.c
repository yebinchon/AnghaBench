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
struct net_device {int flags; int /*<<< orphan*/  dev_addr; } ;
struct dsa_port {int /*<<< orphan*/  pl; int /*<<< orphan*/  xmit_queue; int /*<<< orphan*/  xmit_work; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct dsa_port*) ; 
 struct net_device* FUNC7 (struct net_device*) ; 
 struct dsa_port* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct net_device *master = FUNC7(dev);
	struct dsa_port *dp = FUNC8(dev);

	FUNC0(&dp->xmit_work);
	FUNC11(&dp->xmit_queue);

	FUNC10(dp->pl);

	FUNC6(dp);

	FUNC1(master, dev);
	FUNC5(master, dev);
	if (dev->flags & IFF_ALLMULTI)
		FUNC2(master, -1);
	if (dev->flags & IFF_PROMISC)
		FUNC3(master, -1);

	if (!FUNC9(dev->dev_addr, master->dev_addr))
		FUNC4(master, dev->dev_addr);

	return 0;
}