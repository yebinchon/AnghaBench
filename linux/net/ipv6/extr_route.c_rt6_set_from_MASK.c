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
struct rt6_info {int /*<<< orphan*/  dst; int /*<<< orphan*/  from; int /*<<< orphan*/  rt6i_flags; } ;
struct fib6_info {int /*<<< orphan*/  fib6_metrics; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTF_EXPIRES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fib6_info*) ; 

__attribute__((used)) static void FUNC2(struct rt6_info *rt, struct fib6_info *from)
{
	rt->rt6i_flags &= ~RTF_EXPIRES;
	FUNC1(rt->from, from);
	FUNC0(&rt->dst, from->fib6_metrics);
}