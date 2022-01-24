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
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtable*) ; 
 int /*<<< orphan*/  LINUX_MIB_ARPFILTER ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC2 (struct net_device*) ; 
 struct rtable* FUNC3 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(__be32 sip, __be32 tip, struct net_device *dev)
{
	struct rtable *rt;
	int flag = 0;
	/*unsigned long now; */
	struct net *net = FUNC2(dev);

	rt = FUNC3(net, sip, tip, 0, FUNC5(dev));
	if (FUNC0(rt))
		return 1;
	if (rt->dst.dev != dev) {
		FUNC1(net, LINUX_MIB_ARPFILTER);
		flag = 1;
	}
	FUNC4(rt);
	return flag;
}