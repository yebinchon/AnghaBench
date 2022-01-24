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
struct flowi {int dummy; } ;
struct fib_rule {int dummy; } ;
struct fib_lookup_arg {scalar_t__ lookup_ptr; } ;

/* Variables and functions */
 int FUNC0 (struct fib_rule*,struct flowi*,int,struct fib_lookup_arg*) ; 
 int FUNC1 (struct fib_rule*,struct flowi*,int,struct fib_lookup_arg*) ; 
 scalar_t__ fib6_table_lookup ; 

__attribute__((used)) static int FUNC2(struct fib_rule *rule, struct flowi *flp,
			    int flags, struct fib_lookup_arg *arg)
{
	if (arg->lookup_ptr == fib6_table_lookup)
		return FUNC1(rule, flp, flags, arg);

	return FUNC0(rule, flp, flags, arg);
}