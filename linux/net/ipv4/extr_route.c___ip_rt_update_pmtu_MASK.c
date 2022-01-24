#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct dst_entry {int /*<<< orphan*/  dev; scalar_t__ expires; } ;
struct rtable {scalar_t__ rt_pmtu; struct dst_entry dst; } ;
struct flowi4 {int /*<<< orphan*/  daddr; } ;
struct fib_result {int dummy; } ;
struct fib_nh_common {int dummy; } ;

/* Variables and functions */
 struct fib_nh_common* FUNC0 (struct fib_result) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct flowi4*,struct fib_result*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct dst_entry*) ; 
 scalar_t__ ip_rt_min_pmtu ; 
 int ip_rt_mtu_expires ; 
 scalar_t__ FUNC4 (struct dst_entry*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct fib_nh_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct rtable *rt, struct flowi4 *fl4, u32 mtu)
{
	struct dst_entry *dst = &rt->dst;
	u32 old_mtu = FUNC4(dst);
	struct fib_result res;
	bool lock = false;

	if (FUNC3(dst))
		return;

	if (old_mtu < mtu)
		return;

	if (mtu < ip_rt_min_pmtu) {
		lock = true;
		mtu = FUNC5(old_mtu, ip_rt_min_pmtu);
	}

	if (rt->rt_pmtu == mtu && !lock &&
	    FUNC8(jiffies, dst->expires - ip_rt_mtu_expires / 2))
		return;

	FUNC6();
	if (FUNC2(FUNC1(dst->dev), fl4, &res, 0) == 0) {
		struct fib_nh_common *nhc = FUNC0(res);

		FUNC9(nhc, fl4->daddr, 0, mtu, lock,
				      jiffies + ip_rt_mtu_expires);
	}
	FUNC7();
}