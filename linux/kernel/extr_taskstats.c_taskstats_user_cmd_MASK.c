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
struct sk_buff {int dummy; } ;
struct genl_info {scalar_t__* attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t TASKSTATS_CMD_ATTR_DEREGISTER_CPUMASK ; 
 size_t TASKSTATS_CMD_ATTR_PID ; 
 size_t TASKSTATS_CMD_ATTR_REGISTER_CPUMASK ; 
 size_t TASKSTATS_CMD_ATTR_TGID ; 
 int FUNC0 (struct genl_info*) ; 
 int FUNC1 (struct genl_info*) ; 
 int FUNC2 (struct genl_info*) ; 
 int FUNC3 (struct genl_info*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct genl_info *info)
{
	if (info->attrs[TASKSTATS_CMD_ATTR_REGISTER_CPUMASK])
		return FUNC2(info);
	else if (info->attrs[TASKSTATS_CMD_ATTR_DEREGISTER_CPUMASK])
		return FUNC0(info);
	else if (info->attrs[TASKSTATS_CMD_ATTR_PID])
		return FUNC1(info);
	else if (info->attrs[TASKSTATS_CMD_ATTR_TGID])
		return FUNC3(info);
	else
		return -EINVAL;
}