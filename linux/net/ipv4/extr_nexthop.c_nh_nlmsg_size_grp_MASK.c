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
struct nh_group {int num_nh; } ;
struct nexthop_grp {int dummy; } ;
struct nexthop {int /*<<< orphan*/  nh_grp; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 struct nh_group* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC2(struct nexthop *nh)
{
	struct nh_group *nhg = FUNC1(nh->nh_grp);
	size_t sz = sizeof(struct nexthop_grp) * nhg->num_nh;

	return FUNC0(sz) +
	       FUNC0(2);  /* NHA_GROUP_TYPE */
}