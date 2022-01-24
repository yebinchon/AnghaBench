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
struct psample_group {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSAMPLE_CMD_DEL_GROUP ; 
 int /*<<< orphan*/  FUNC0 (struct psample_group*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct psample_group*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 

__attribute__((used)) static void FUNC3(struct psample_group *group)
{
	FUNC2(group, PSAMPLE_CMD_DEL_GROUP);
	FUNC1(&group->list);
	FUNC0(group, rcu);
}