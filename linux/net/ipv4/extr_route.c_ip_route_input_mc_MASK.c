#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  input; int /*<<< orphan*/  output; int /*<<< orphan*/  tclassid; } ;
struct rtable {int rt_is_input; TYPE_1__ dst; } ;
struct net_device {int dummy; } ;
struct in_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  loopback_dev; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (struct in_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct in_device*) ; 
 int /*<<< orphan*/  NOPOLICY ; 
 unsigned int RTCF_LOCAL ; 
 unsigned int RTCF_MULTICAST ; 
 int /*<<< orphan*/  RTN_MULTICAST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct in_device* FUNC3 (struct net_device*) ; 
 TYPE_2__* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  in_slow_mc ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,struct in_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ip_mr_input ; 
 int /*<<< orphan*/  ip_rt_bug ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct rtable* FUNC7 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, __be32 daddr, __be32 saddr,
			     u8 tos, struct net_device *dev, int our)
{
	struct in_device *in_dev = FUNC3(dev);
	unsigned int flags = RTCF_MULTICAST;
	struct rtable *rth;
	u32 itag = 0;
	int err;

	err = FUNC5(skb, daddr, saddr, tos, dev, in_dev, &itag);
	if (err)
		return err;

	if (our)
		flags |= RTCF_LOCAL;

	rth = FUNC7(FUNC4(dev)->loopback_dev, flags, RTN_MULTICAST,
			   FUNC0(in_dev, NOPOLICY), false, false);
	if (!rth)
		return -ENOBUFS;

#ifdef CONFIG_IP_ROUTE_CLASSID
	rth->dst.tclassid = itag;
#endif
	rth->dst.output = ip_rt_bug;
	rth->rt_is_input= 1;

#ifdef CONFIG_IP_MROUTE
	if (!ipv4_is_local_multicast(daddr) && IN_DEV_MFORWARD(in_dev))
		rth->dst.input = ip_mr_input;
#endif
	FUNC2(in_slow_mc);

	FUNC8(skb, &rth->dst);
	return 0;
}