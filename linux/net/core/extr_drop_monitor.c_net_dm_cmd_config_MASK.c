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
struct netlink_ext_ack {int dummy; } ;
struct genl_info {struct netlink_ext_ack* extack; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int FUNC1 (struct genl_info*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct genl_info*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb,
			struct genl_info *info)
{
	struct netlink_ext_ack *extack = info->extack;
	int rc;

	if (FUNC2()) {
		FUNC0(extack, "Cannot configure drop monitor during monitoring");
		return -EBUSY;
	}

	rc = FUNC1(info);
	if (rc)
		return rc;

	FUNC4(info);

	FUNC3(info);

	return 0;
}