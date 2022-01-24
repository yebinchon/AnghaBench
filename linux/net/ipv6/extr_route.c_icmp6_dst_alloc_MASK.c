#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  output; int /*<<< orphan*/  input; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int plen; int /*<<< orphan*/  addr; } ;
struct rt6_info {TYPE_4__ dst; struct inet6_dev* rt6i_idev; TYPE_1__ rt6i_dst; int /*<<< orphan*/  rt6i_gateway; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {TYPE_2__* rt6_stats; } ;
struct net {TYPE_3__ ipv6; } ;
struct inet6_dev {int dummy; } ;
struct flowi6 {int /*<<< orphan*/  daddr; } ;
struct dst_entry {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  fib_rt_uncache; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_HOST ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dst_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTAX_HOPLIMIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct net* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct flowi6*) ; 
 struct inet6_dev* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct inet6_dev*) ; 
 struct rt6_info* FUNC7 (struct net*,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip6_input ; 
 int /*<<< orphan*/  ip6_output ; 
 int /*<<< orphan*/  FUNC8 (struct rt6_info*) ; 
 scalar_t__ FUNC9 (int) ; 
 struct dst_entry* FUNC10 (struct net*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct dst_entry *FUNC11(struct net_device *dev,
				  struct flowi6 *fl6)
{
	struct dst_entry *dst;
	struct rt6_info *rt;
	struct inet6_dev *idev = FUNC5(dev);
	struct net *net = FUNC2(dev);

	if (FUNC9(!idev))
		return FUNC0(-ENODEV);

	rt = FUNC7(net, dev, 0);
	if (FUNC9(!rt)) {
		FUNC6(idev);
		dst = FUNC0(-ENOMEM);
		goto out;
	}

	rt->dst.flags |= DST_HOST;
	rt->dst.input = ip6_input;
	rt->dst.output  = ip6_output;
	rt->rt6i_gateway  = fl6->daddr;
	rt->rt6i_dst.addr = fl6->daddr;
	rt->rt6i_dst.plen = 128;
	rt->rt6i_idev     = idev;
	FUNC3(&rt->dst, RTAX_HOPLIMIT, 0);

	/* Add this dst into uncached_list so that rt6_disable_ip() can
	 * do proper release of the net_device
	 */
	FUNC8(rt);
	FUNC1(&net->ipv6.rt6_stats->fib_rt_uncache);

	dst = FUNC10(net, &rt->dst, FUNC4(fl6), NULL, 0);

out:
	return dst;
}