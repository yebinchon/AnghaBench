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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct netlbl_audit {int dummy; } ;
struct genl_info {scalar_t__* attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NLBL_UNLABEL_A_ACPTFLG ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct netlbl_audit*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct netlbl_audit*) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, struct genl_info *info)
{
	u8 value;
	struct netlbl_audit audit_info;

	if (info->attrs[NLBL_UNLABEL_A_ACPTFLG]) {
		value = FUNC2(info->attrs[NLBL_UNLABEL_A_ACPTFLG]);
		if (value == 1 || value == 0) {
			FUNC0(skb, &audit_info);
			FUNC1(value, &audit_info);
			return 0;
		}
	}

	return -EINVAL;
}