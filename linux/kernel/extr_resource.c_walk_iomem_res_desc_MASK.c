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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long,int,void*,int (*) (struct resource*,void*)) ; 

int FUNC1(unsigned long desc, unsigned long flags, u64 start,
		u64 end, void *arg, int (*func)(struct resource *, void *))
{
	return FUNC0(start, end, flags, desc, false, arg, func);
}