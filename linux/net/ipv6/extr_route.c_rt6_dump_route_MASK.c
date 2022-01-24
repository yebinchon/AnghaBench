#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct fib_dump_filter {int flags; scalar_t__ rt_type; scalar_t__ protocol; scalar_t__ dump_exceptions; scalar_t__ dump_routes; scalar_t__ filter_set; scalar_t__ dev; } ;
struct rt6_rtnl_dump_arg {TYPE_3__* cb; int /*<<< orphan*/  skb; struct net* net; struct fib_dump_filter filter; } ;
struct TYPE_5__ {struct fib6_info* fib6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct fib6_nh_exception_dump_walker {unsigned int flags; unsigned int skip; int count; struct fib6_info* rt; struct rt6_rtnl_dump_arg* dump; } ;
struct fib6_info {int fib6_flags; scalar_t__ fib6_type; scalar_t__ fib6_protocol; int /*<<< orphan*/  fib6_nh; scalar_t__ nh; } ;
struct TYPE_8__ {int /*<<< orphan*/  portid; } ;
struct TYPE_7__ {TYPE_2__* nlh; int /*<<< orphan*/  skb; } ;
struct TYPE_6__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 TYPE_4__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int NLM_F_DUMP_FILTERED ; 
 unsigned int NLM_F_MULTI ; 
 int RTF_PREFIX_RT ; 
 int RTM_F_PREFIX ; 
 int /*<<< orphan*/  RTM_NEWROUTE ; 
 int /*<<< orphan*/  FUNC1 (struct fib6_info*,scalar_t__) ; 
 int FUNC2 (scalar_t__,int (*) (int /*<<< orphan*/ ,struct fib6_nh_exception_dump_walker*),struct fib6_nh_exception_dump_walker*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct net*,int /*<<< orphan*/ ,struct fib6_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct fib6_nh_exception_dump_walker*) ; 

int FUNC7(struct fib6_info *rt, void *p_arg, unsigned int skip)
{
	struct rt6_rtnl_dump_arg *arg = (struct rt6_rtnl_dump_arg *) p_arg;
	struct fib_dump_filter *filter = &arg->filter;
	unsigned int flags = NLM_F_MULTI;
	struct net *net = arg->net;
	int count = 0;

	if (rt == net->ipv6.fib6_null_entry)
		return -1;

	if ((filter->flags & RTM_F_PREFIX) &&
	    !(rt->fib6_flags & RTF_PREFIX_RT)) {
		/* success since this is not a prefix route */
		return -1;
	}
	if (filter->filter_set &&
	    ((filter->rt_type  && rt->fib6_type != filter->rt_type) ||
	     (filter->dev      && !FUNC1(rt, filter->dev)) ||
	     (filter->protocol && rt->fib6_protocol != filter->protocol))) {
		return -1;
	}

	if (filter->filter_set ||
	    !filter->dump_routes || !filter->dump_exceptions) {
		flags |= NLM_F_DUMP_FILTERED;
	}

	if (filter->dump_routes) {
		if (skip) {
			skip--;
		} else {
			if (FUNC5(net, arg->skb, rt, NULL, NULL, NULL,
					  0, RTM_NEWROUTE,
					  FUNC0(arg->cb->skb).portid,
					  arg->cb->nlh->nlmsg_seq, flags)) {
				return 0;
			}
			count++;
		}
	}

	if (filter->dump_exceptions) {
		struct fib6_nh_exception_dump_walker w = { .dump = arg,
							   .rt = rt,
							   .flags = flags,
							   .skip = skip,
							   .count = 0 };
		int err;

		FUNC3();
		if (rt->nh) {
			err = FUNC2(rt->nh,
						       rt6_nh_dump_exceptions,
						       &w);
		} else {
			err = FUNC6(rt->fib6_nh, &w);
		}
		FUNC4();

		if (err)
			return count += w.count;
	}

	return -1;
}