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
typedef  scalar_t__ u16 ;
struct nlattr {int dummy; } ;
struct devlink_sb {int dummy; } ;

/* Variables and functions */
 size_t DEVLINK_ATTR_SB_POOL_INDEX ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct devlink_sb*) ; 
 scalar_t__ FUNC1 (struct nlattr*) ; 

__attribute__((used)) static int FUNC2(struct devlink_sb *devlink_sb,
						struct nlattr **attrs,
						u16 *p_pool_index)
{
	u16 val;

	if (!attrs[DEVLINK_ATTR_SB_POOL_INDEX])
		return -EINVAL;

	val = FUNC1(attrs[DEVLINK_ATTR_SB_POOL_INDEX]);
	if (val >= FUNC0(devlink_sb))
		return -EINVAL;
	*p_pool_index = val;
	return 0;
}