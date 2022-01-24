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
struct fib6_info {int fib6_flags; int /*<<< orphan*/  expires; } ;
struct fib6_gc_args {int /*<<< orphan*/  more; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct fib6_info*) ; 
 int RTF_EXPIRES ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct fib6_info*,struct fib6_gc_args*,unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct fib6_info *rt, void *arg)
{
	struct fib6_gc_args *gc_args = arg;
	unsigned long now = jiffies;

	/*
	 *	check addrconf expiration here.
	 *	Routes are expired even if they are in use.
	 */

	if (rt->fib6_flags & RTF_EXPIRES && rt->expires) {
		if (FUNC2(now, rt->expires)) {
			FUNC0("expiring %p\n", rt);
			return -1;
		}
		gc_args->more++;
	}

	/*	Also age clones in the exception table.
	 *	Note, that clones are aged out
	 *	only if they are not in use now.
	 */
	FUNC1(rt, gc_args, now);

	return 0;
}