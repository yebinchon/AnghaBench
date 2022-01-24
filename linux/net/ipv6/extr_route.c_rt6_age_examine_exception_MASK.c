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
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  expires; scalar_t__ lastuse; } ;
struct rt6_info {int rt6i_flags; int /*<<< orphan*/  rt6i_gateway; TYPE_1__ dst; } ;
struct rt6_exception_bucket {int dummy; } ;
struct rt6_exception {struct rt6_info* rt6i; } ;
struct neighbour {int flags; } ;
struct fib6_gc_args {int /*<<< orphan*/  more; scalar_t__ timeout; } ;
typedef  int __u8 ;

/* Variables and functions */
 int NTF_ROUTER ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rt6_info*) ; 
 int RTF_EXPIRES ; 
 int RTF_GATEWAY ; 
 struct neighbour* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct rt6_exception_bucket*,struct rt6_exception*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct rt6_exception_bucket *bucket,
				      struct rt6_exception *rt6_ex,
				      struct fib6_gc_args *gc_args,
				      unsigned long now)
{
	struct rt6_info *rt = rt6_ex->rt6i;

	/* we are pruning and obsoleting aged-out and non gateway exceptions
	 * even if others have still references to them, so that on next
	 * dst_check() such references can be dropped.
	 * EXPIRES exceptions - e.g. pmtu-generated ones are pruned when
	 * expired, independently from their aging, as per RFC 8201 section 4
	 */
	if (!(rt->rt6i_flags & RTF_EXPIRES)) {
		if (FUNC4(now, rt->dst.lastuse + gc_args->timeout)) {
			FUNC0("aging clone %p\n", rt);
			FUNC2(bucket, rt6_ex);
			return;
		}
	} else if (FUNC3(jiffies, rt->dst.expires)) {
		FUNC0("purging expired route %p\n", rt);
		FUNC2(bucket, rt6_ex);
		return;
	}

	if (rt->rt6i_flags & RTF_GATEWAY) {
		struct neighbour *neigh;
		__u8 neigh_flags = 0;

		neigh = FUNC1(rt->dst.dev, &rt->rt6i_gateway);
		if (neigh)
			neigh_flags = neigh->flags;

		if (!(neigh_flags & NTF_ROUTER)) {
			FUNC0("purging route %p via non-router but gateway\n",
				  rt);
			FUNC2(bucket, rt6_ex);
			return;
		}
	}

	gc_args->more++;
}