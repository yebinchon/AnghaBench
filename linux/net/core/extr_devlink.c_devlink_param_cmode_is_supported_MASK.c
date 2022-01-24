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
struct devlink_param {int /*<<< orphan*/  supported_cmodes; } ;
typedef  enum devlink_param_cmode { ____Placeholder_devlink_param_cmode } devlink_param_cmode ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC1(const struct devlink_param *param,
				 enum devlink_param_cmode cmode)
{
	return FUNC0(cmode, &param->supported_cmodes);
}