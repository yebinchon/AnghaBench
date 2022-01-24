#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nh_group {int num_nh; TYPE_1__* nh_entries; } ;
struct nexthop {int /*<<< orphan*/  nh_grp; } ;
struct TYPE_2__ {int /*<<< orphan*/  nh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nh_group*) ; 
 struct nh_group* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct nexthop *nh)
{
	struct nh_group *nhg;
	int i;

	nhg = FUNC2(nh->nh_grp);
	for (i = 0; i < nhg->num_nh; ++i)
		FUNC0(nhg->nh_entries[i].nh);

	FUNC1(nhg);
}