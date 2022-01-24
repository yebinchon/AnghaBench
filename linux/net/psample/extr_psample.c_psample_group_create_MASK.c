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
struct psample_group {int /*<<< orphan*/  list; int /*<<< orphan*/  group_num; struct net* net; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PSAMPLE_CMD_NEW_GROUP ; 
 struct psample_group* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct psample_group*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  psample_groups_list ; 

__attribute__((used)) static struct psample_group *FUNC3(struct net *net,
						  u32 group_num)
{
	struct psample_group *group;

	group = FUNC0(sizeof(*group), GFP_ATOMIC);
	if (!group)
		return NULL;

	group->net = net;
	group->group_num = group_num;
	FUNC1(&group->list, &psample_groups_list);

	FUNC2(group, PSAMPLE_CMD_NEW_GROUP);
	return group;
}