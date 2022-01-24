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
struct genl_info {int /*<<< orphan*/  attrs; } ;
struct devlink_port {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 struct devlink_port* FUNC0 (struct devlink*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct devlink_port *FUNC1(struct devlink *devlink,
						       struct genl_info *info)
{
	return FUNC0(devlink, info->attrs);
}