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
struct uncached_list {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct rt6_info {int /*<<< orphan*/  rt6i_uncached; TYPE_3__ dst; struct uncached_list* rt6i_uncached_list; } ;
struct TYPE_5__ {TYPE_1__* rt6_stats; } ;
struct net {TYPE_2__ ipv6; } ;
struct TYPE_4__ {int /*<<< orphan*/  fib_rt_uncache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct rt6_info *rt)
{
	if (!FUNC3(&rt->rt6i_uncached)) {
		struct uncached_list *ul = rt->rt6i_uncached_list;
		struct net *net = FUNC1(rt->dst.dev);

		FUNC4(&ul->lock);
		FUNC2(&rt->rt6i_uncached);
		FUNC0(&net->ipv6.rt6_stats->fib_rt_uncache);
		FUNC5(&ul->lock);
	}
}