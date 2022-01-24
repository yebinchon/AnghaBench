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
struct wiphy_vendor_command {scalar_t__ policy; int /*<<< orphan*/  maxattr; } ;
struct nlattr {int nla_type; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int NLA_F_NESTED ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,struct nlattr*,char*) ; 
 scalar_t__ VENDOR_CMD_RAW_DATA ; 
 int FUNC1 (struct nlattr*,int /*<<< orphan*/ ,scalar_t__,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC2(const struct wiphy_vendor_command *vcmd,
				       struct nlattr *attr,
				       struct netlink_ext_ack *extack)
{
	if (vcmd->policy == VENDOR_CMD_RAW_DATA) {
		if (attr->nla_type & NLA_F_NESTED) {
			FUNC0(extack, attr,
					    "unexpected nested data");
			return -EINVAL;
		}

		return 0;
	}

	if (!(attr->nla_type & NLA_F_NESTED)) {
		FUNC0(extack, attr, "expected nested data");
		return -EINVAL;
	}

	return FUNC1(attr, vcmd->maxattr, vcmd->policy,
				       extack);
}