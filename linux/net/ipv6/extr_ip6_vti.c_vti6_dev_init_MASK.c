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
struct ip6_tnl {int dummy; } ;

/* Variables and functions */
 struct ip6_tnl* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip6_tnl*,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct ip6_tnl *t = FUNC0(dev);
	int err = FUNC1(dev);

	if (err)
		return err;
	FUNC2(t, true);
	return 0;
}