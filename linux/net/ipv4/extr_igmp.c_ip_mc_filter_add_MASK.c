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
struct in_device {struct net_device* dev; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int MAX_ADDR_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 

__attribute__((used)) static void FUNC2(struct in_device *in_dev, __be32 addr)
{
	char buf[MAX_ADDR_LEN];
	struct net_device *dev = in_dev->dev;

	/* Checking for IFF_MULTICAST here is WRONG-WRONG-WRONG.
	   We will get multicast token leakage, when IFF_MULTICAST
	   is changed. This check should be done in ndo_set_rx_mode
	   routine. Something sort of:
	   if (dev->mc_list && dev->flags&IFF_MULTICAST) { do it; }
	   --ANK
	   */
	if (FUNC0(addr, buf, dev, 0) == 0)
		FUNC1(dev, buf);
}