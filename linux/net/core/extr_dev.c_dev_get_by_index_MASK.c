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
struct net {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct net_device *FUNC4(struct net *net, int ifindex)
{
	struct net_device *dev;

	FUNC2();
	dev = FUNC0(net, ifindex);
	if (dev)
		FUNC1(dev);
	FUNC3();
	return dev;
}