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
struct nlattr {int dummy; } ;
struct devlink_dpipe_value {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_ACTION_VALUE ; 
 int EMSGSIZE ; 
 int FUNC0 (struct sk_buff*,struct devlink_dpipe_value*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb,
					   struct devlink_dpipe_value *values,
					   unsigned int values_count)
{
	struct nlattr *action_attr;
	int i;
	int err;

	for (i = 0; i < values_count; i++) {
		action_attr = FUNC3(skb,
						    DEVLINK_ATTR_DPIPE_ACTION_VALUE);
		if (!action_attr)
			return -EMSGSIZE;
		err = FUNC0(skb, &values[i]);
		if (err)
			goto err_action_value_put;
		FUNC2(skb, action_attr);
	}
	return 0;

err_action_value_put:
	FUNC1(skb, action_attr);
	return err;
}