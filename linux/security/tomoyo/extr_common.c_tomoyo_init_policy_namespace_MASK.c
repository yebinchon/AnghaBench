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
struct tomoyo_policy_namespace {int profile_version; int /*<<< orphan*/  namespace_list; int /*<<< orphan*/ * policy_list; int /*<<< orphan*/ * group_list; int /*<<< orphan*/ * acl_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int TOMOYO_MAX_ACL_GROUPS ; 
 unsigned int TOMOYO_MAX_GROUP ; 
 unsigned int TOMOYO_MAX_POLICY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int tomoyo_namespace_enabled ; 
 int /*<<< orphan*/  tomoyo_namespace_list ; 

void FUNC3(struct tomoyo_policy_namespace *ns)
{
	unsigned int idx;

	for (idx = 0; idx < TOMOYO_MAX_ACL_GROUPS; idx++)
		FUNC0(&ns->acl_group[idx]);
	for (idx = 0; idx < TOMOYO_MAX_GROUP; idx++)
		FUNC0(&ns->group_list[idx]);
	for (idx = 0; idx < TOMOYO_MAX_POLICY; idx++)
		FUNC0(&ns->policy_list[idx]);
	ns->profile_version = 20150505;
	tomoyo_namespace_enabled = !FUNC2(&tomoyo_namespace_list);
	FUNC1(&ns->namespace_list, &tomoyo_namespace_list);
}