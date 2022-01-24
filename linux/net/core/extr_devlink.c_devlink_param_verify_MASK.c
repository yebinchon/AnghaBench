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
struct devlink_param {scalar_t__ generic; int /*<<< orphan*/  supported_cmodes; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct devlink_param const*) ; 
 int FUNC1 (struct devlink_param const*) ; 

__attribute__((used)) static int FUNC2(const struct devlink_param *param)
{
	if (!param || !param->name || !param->supported_cmodes)
		return -EINVAL;
	if (param->generic)
		return FUNC1(param);
	else
		return FUNC0(param);
}