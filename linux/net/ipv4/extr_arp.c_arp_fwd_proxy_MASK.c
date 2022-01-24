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
struct TYPE_2__ {struct net_device* dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct net_device {int dummy; } ;
struct in_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct in_device*) ; 
 struct in_device* FUNC2 (struct net_device*) ; 

__attribute__((used)) static inline int FUNC3(struct in_device *in_dev,
				struct net_device *dev,	struct rtable *rt)
{
	struct in_device *out_dev;
	int imi, omi = -1;

	if (rt->dst.dev == dev)
		return 0;

	if (!FUNC1(in_dev))
		return 0;
	imi = FUNC0(in_dev);
	if (imi == 0)
		return 1;
	if (imi == -1)
		return 0;

	/* place to check for proxy_arp for routes */

	out_dev = FUNC2(rt->dst.dev);
	if (out_dev)
		omi = FUNC0(out_dev);

	return omi != imi && omi != -1;
}