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
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct in6_addr {int dummy; } ;
struct TYPE_3__ {struct in6_addr addr; } ;
struct rt6_info {TYPE_2__ rt6i_dst; TYPE_1__ rt6i_src; } ;
struct rt6_exception_bucket {int dummy; } ;
struct rt6_exception {int dummy; } ;
struct fib6_nh {int /*<<< orphan*/  rt6i_exception_bucket; } ;

/* Variables and functions */
 int ENOENT ; 
 struct rt6_exception* FUNC0 (struct rt6_exception_bucket**,int /*<<< orphan*/ *,struct in6_addr const*) ; 
 struct rt6_exception_bucket* FUNC1 (struct fib6_nh const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt6_exception_lock ; 
 int /*<<< orphan*/  FUNC3 (struct rt6_exception_bucket*,struct rt6_exception*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(const struct fib6_nh *nh, int plen,
				    const struct rt6_info *rt)
{
	const struct in6_addr *src_key = NULL;
	struct rt6_exception_bucket *bucket;
	struct rt6_exception *rt6_ex;
	int err;

	if (!FUNC2(nh->rt6i_exception_bucket))
		return -ENOENT;

	FUNC4(&rt6_exception_lock);
	bucket = FUNC1(nh, &rt6_exception_lock);

#ifdef CONFIG_IPV6_SUBTREES
	/* rt6i_src.plen != 0 indicates 'from' is in subtree
	 * and exception table is indexed by a hash of
	 * both rt6i_dst and rt6i_src.
	 * Otherwise, the exception table is indexed by
	 * a hash of only rt6i_dst.
	 */
	if (plen)
		src_key = &rt->rt6i_src.addr;
#endif
	rt6_ex = FUNC0(&bucket,
					       &rt->rt6i_dst.addr,
					       src_key);
	if (rt6_ex) {
		FUNC3(bucket, rt6_ex);
		err = 0;
	} else {
		err = -ENOENT;
	}

	FUNC5(&rt6_exception_lock);
	return err;
}