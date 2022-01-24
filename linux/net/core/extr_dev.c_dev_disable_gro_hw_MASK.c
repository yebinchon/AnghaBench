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
struct net_device {int wanted_features; int features; } ;

/* Variables and functions */
 int NETIF_F_GRO_HW ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	dev->wanted_features &= ~NETIF_F_GRO_HW;
	FUNC1(dev);

	if (FUNC2(dev->features & NETIF_F_GRO_HW))
		FUNC0(dev, "failed to disable GRO_HW!\n");
}