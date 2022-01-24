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
struct fib6_info {int /*<<< orphan*/  fib6_nh; scalar_t__ nh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,struct fib6_info*) ; 
 int /*<<< orphan*/  rt6_nh_flush_exceptions ; 

void FUNC2(struct fib6_info *f6i)
{
	if (f6i->nh)
		FUNC1(f6i->nh, rt6_nh_flush_exceptions,
					 f6i);
	else
		FUNC0(f6i->fib6_nh, f6i);
}