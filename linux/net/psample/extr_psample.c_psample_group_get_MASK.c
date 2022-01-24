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
typedef  int /*<<< orphan*/  u32 ;
struct psample_group {int /*<<< orphan*/  refcount; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct psample_group* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 struct psample_group* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  psample_groups_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct psample_group *FUNC4(struct net *net, u32 group_num)
{
	struct psample_group *group;

	FUNC2(&psample_groups_lock);

	group = FUNC1(net, group_num);
	if (!group) {
		group = FUNC0(net, group_num);
		if (!group)
			goto out;
	}
	group->refcount++;

out:
	FUNC3(&psample_groups_lock);
	return group;
}