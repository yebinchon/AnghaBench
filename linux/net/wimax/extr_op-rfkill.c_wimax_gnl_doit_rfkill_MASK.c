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
struct wimax_dev {int /*<<< orphan*/  net_dev; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/ ** attrs; } ;
struct device {int dummy; } ;
typedef  enum wimax_rf_state { ____Placeholder_wimax_rf_state } wimax_rf_state ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 size_t WIMAX_GNL_RFKILL_IFIDX ; 
 size_t WIMAX_GNL_RFKILL_STATE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*,struct sk_buff*,struct genl_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,char*,struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct wimax_dev* FUNC6 (struct genl_info*,int) ; 
 struct device* FUNC7 (struct wimax_dev*) ; 
 int FUNC8 (struct wimax_dev*,int) ; 

int FUNC9(struct sk_buff *skb, struct genl_info *info)
{
	int result, ifindex;
	struct wimax_dev *wimax_dev;
	struct device *dev;
	enum wimax_rf_state new_state;

	FUNC1(3, NULL, "(skb %p info %p)\n", skb, info);
	result = -ENODEV;
	if (info->attrs[WIMAX_GNL_RFKILL_IFIDX] == NULL) {
		FUNC5("WIMAX_GNL_OP_RFKILL: can't find IFIDX attribute\n");
		goto error_no_wimax_dev;
	}
	ifindex = FUNC4(info->attrs[WIMAX_GNL_RFKILL_IFIDX]);
	wimax_dev = FUNC6(info, ifindex);
	if (wimax_dev == NULL)
		goto error_no_wimax_dev;
	dev = FUNC7(wimax_dev);
	result = -EINVAL;
	if (info->attrs[WIMAX_GNL_RFKILL_STATE] == NULL) {
		FUNC2(dev, "WIMAX_GNL_RFKILL: can't find RFKILL_STATE "
			"attribute\n");
		goto error_no_pid;
	}
	new_state = FUNC4(info->attrs[WIMAX_GNL_RFKILL_STATE]);

	/* Execute the operation and send the result back to user space */
	result = FUNC8(wimax_dev, new_state);
error_no_pid:
	FUNC3(wimax_dev->net_dev);
error_no_wimax_dev:
	FUNC0(3, NULL, "(skb %p info %p) = %d\n", skb, info, result);
	return result;
}