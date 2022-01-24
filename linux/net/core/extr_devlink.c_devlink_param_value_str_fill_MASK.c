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
union devlink_param_value {int /*<<< orphan*/  vstr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t __DEVLINK_PARAM_MAX_STRING_VALUE ; 
 size_t FUNC1 (int /*<<< orphan*/ ,char const*,size_t) ; 

void FUNC2(union devlink_param_value *dst_val,
				  const char *src)
{
	size_t len;

	len = FUNC1(dst_val->vstr, src, __DEVLINK_PARAM_MAX_STRING_VALUE);
	FUNC0(len >= __DEVLINK_PARAM_MAX_STRING_VALUE);
}