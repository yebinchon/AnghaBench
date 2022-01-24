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
struct nexthop {int /*<<< orphan*/  grp_list; int /*<<< orphan*/  f6i_list; int /*<<< orphan*/  fi_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nexthop* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nexthop *FUNC2(void)
{
	struct nexthop *nh;

	nh = FUNC1(sizeof(struct nexthop), GFP_KERNEL);
	if (nh) {
		FUNC0(&nh->fi_list);
		FUNC0(&nh->f6i_list);
		FUNC0(&nh->grp_list);
	}
	return nh;
}