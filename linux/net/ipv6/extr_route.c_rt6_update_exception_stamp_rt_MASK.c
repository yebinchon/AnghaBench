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
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct rt6_info {int rt6i_flags; int /*<<< orphan*/  rt6i_gateway; TYPE_1__ dst; int /*<<< orphan*/  from; } ;
struct fib6_nh_match_arg {struct fib6_nh* match; int /*<<< orphan*/ * gw; int /*<<< orphan*/  dev; } ;
struct fib6_nh {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  plen; } ;
struct fib6_info {TYPE_2__ fib6_src; struct fib6_nh* fib6_nh; scalar_t__ nh; } ;

/* Variables and functions */
 int RTF_CACHE ; 
 int /*<<< orphan*/  fib6_nh_find_match ; 
 int /*<<< orphan*/  FUNC0 (struct fib6_nh*,int /*<<< orphan*/ ,struct rt6_info*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,struct fib6_nh_match_arg*) ; 
 struct fib6_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct rt6_info *rt)
{
	struct fib6_info *from;
	struct fib6_nh *fib6_nh;

	FUNC3();

	from = FUNC2(rt->from);
	if (!from || !(rt->rt6i_flags & RTF_CACHE))
		goto unlock;

	if (from->nh) {
		struct fib6_nh_match_arg arg = {
			.dev = rt->dst.dev,
			.gw = &rt->rt6i_gateway,
		};

		FUNC1(from->nh, fib6_nh_find_match, &arg);

		if (!arg.match)
			goto unlock;
		fib6_nh = arg.match;
	} else {
		fib6_nh = from->fib6_nh;
	}
	FUNC0(fib6_nh, from->fib6_src.plen, rt);
unlock:
	FUNC4();
}