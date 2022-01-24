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
struct nexthop {scalar_t__ is_group; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nexthop*) ; 
 scalar_t__ FUNC1 (struct nexthop*) ; 
 size_t FUNC2 (int) ; 

__attribute__((used)) static size_t FUNC3(struct nexthop *nh)
{
	size_t sz = FUNC2(4);    /* NHA_ID */

	if (nh->is_group)
		sz += FUNC0(nh);
	else
		sz += FUNC1(nh);

	return sz;
}