#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rt6_info {int /*<<< orphan*/  dst; } ;
struct net_device {int dummy; } ;
struct fib6_result {struct fib6_info* f6i; TYPE_2__* nh; } ;
struct fib6_info {int dummy; } ;
struct TYPE_5__ {struct rt6_info* ip6_null_entry; } ;
struct TYPE_7__ {TYPE_1__ ipv6; } ;
struct TYPE_6__ {struct net_device* fib_nh_dev; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned short FUNC2 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct fib6_info*) ; 
 struct rt6_info* FUNC5 (TYPE_3__*,struct net_device*,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (struct rt6_info*,struct fib6_result const*) ; 

__attribute__((used)) static struct rt6_info *FUNC7(const struct fib6_result *res)
{
	struct net_device *dev = res->nh->fib_nh_dev;
	struct fib6_info *f6i = res->f6i;
	unsigned short flags;
	struct rt6_info *nrt;

	if (!FUNC3(f6i))
		goto fallback;

	flags = FUNC2(f6i);
	nrt = FUNC5(FUNC0(dev), dev, flags);
	if (!nrt) {
		FUNC4(f6i);
		goto fallback;
	}

	FUNC6(nrt, res);
	return nrt;

fallback:
	nrt = FUNC0(dev)->ipv6.ip6_null_entry;
	FUNC1(&nrt->dst);
	return nrt;
}