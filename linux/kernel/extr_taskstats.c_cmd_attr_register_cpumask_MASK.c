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
struct genl_info {int /*<<< orphan*/  snd_portid; int /*<<< orphan*/ * attrs; } ;
typedef  int /*<<< orphan*/  cpumask_var_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REGISTER ; 
 size_t TASKSTATS_CMD_ATTR_REGISTER_CPUMASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct genl_info *info)
{
	cpumask_var_t mask;
	int rc;

	if (!FUNC1(&mask, GFP_KERNEL))
		return -ENOMEM;
	rc = FUNC3(info->attrs[TASKSTATS_CMD_ATTR_REGISTER_CPUMASK], mask);
	if (rc < 0)
		goto out;
	rc = FUNC0(info->snd_portid, mask, REGISTER);
out:
	FUNC2(mask);
	return rc;
}