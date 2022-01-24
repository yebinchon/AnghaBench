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
struct net_device {scalar_t__ ifindex; } ;

/* Variables and functions */
 unsigned char IF_OPER_DORMANT ; 
 unsigned char IF_OPER_DOWN ; 
 unsigned char IF_OPER_LOWERLAYERDOWN ; 
 unsigned char IF_OPER_UP ; 
 scalar_t__ FUNC0 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device const*) ; 
 scalar_t__ FUNC2 (struct net_device const*) ; 

__attribute__((used)) static unsigned char FUNC3(const struct net_device *dev)
{
	if (!FUNC1(dev))
		return (dev->ifindex != FUNC0(dev) ?
			IF_OPER_LOWERLAYERDOWN : IF_OPER_DOWN);

	if (FUNC2(dev))
		return IF_OPER_DORMANT;

	return IF_OPER_UP;
}