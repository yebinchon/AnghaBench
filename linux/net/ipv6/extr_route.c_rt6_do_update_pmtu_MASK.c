#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct rt6_info {int /*<<< orphan*/  rt6i_flags; TYPE_3__ dst; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip6_rt_mtu_expires; } ;
struct TYPE_5__ {TYPE_1__ sysctl; } ;
struct net {TYPE_2__ ipv6; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTAX_MTU ; 
 int /*<<< orphan*/  RTF_MODIFIED ; 
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt6_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rt6_info *rt, u32 mtu)
{
	struct net *net = FUNC0(rt->dst.dev);

	FUNC1(&rt->dst, RTAX_MTU, mtu);
	rt->rt6i_flags |= RTF_MODIFIED;
	FUNC2(rt, net->ipv6.sysctl.ip6_rt_mtu_expires);
}