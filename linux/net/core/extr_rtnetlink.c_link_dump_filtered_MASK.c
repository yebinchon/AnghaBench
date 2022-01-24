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
struct rtnl_link_ops {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*,struct rtnl_link_ops const*) ; 
 scalar_t__ FUNC1 (struct net_device*,int) ; 

__attribute__((used)) static bool FUNC2(struct net_device *dev,
			       int master_idx,
			       const struct rtnl_link_ops *kind_ops)
{
	if (FUNC1(dev, master_idx) ||
	    FUNC0(dev, kind_ops))
		return true;

	return false;
}