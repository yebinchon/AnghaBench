#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  features; } ;
struct TYPE_2__ {scalar_t__ collect_md; } ;
struct ip6_tnl {TYPE_1__ parms; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETIF_F_NETNS_LOCAL ; 
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip6_tnl*) ; 
 struct ip6_tnl* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct ip6_tnl *t = FUNC2(dev);
	int err = FUNC0(dev);

	if (err)
		return err;
	FUNC1(t);
	if (t->parms.collect_md) {
		dev->features |= NETIF_F_NETNS_LOCAL;
		FUNC3(dev);
	}
	return 0;
}