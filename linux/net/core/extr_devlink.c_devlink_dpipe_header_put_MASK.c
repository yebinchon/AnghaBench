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
struct devlink_dpipe_header {int /*<<< orphan*/  global; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_HEADER ; 
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_HEADER_FIELDS ; 
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_HEADER_GLOBAL ; 
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_HEADER_ID ; 
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_HEADER_NAME ; 
 int EMSGSIZE ; 
 int FUNC0 (struct sk_buff*,struct devlink_dpipe_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb,
				    struct devlink_dpipe_header *header)
{
	struct nlattr *fields_attr, *header_attr;
	int err;

	header_attr = FUNC3(skb, DEVLINK_ATTR_DPIPE_HEADER);
	if (!header_attr)
		return -EMSGSIZE;

	if (FUNC4(skb, DEVLINK_ATTR_DPIPE_HEADER_NAME, header->name) ||
	    FUNC5(skb, DEVLINK_ATTR_DPIPE_HEADER_ID, header->id) ||
	    FUNC6(skb, DEVLINK_ATTR_DPIPE_HEADER_GLOBAL, header->global))
		goto nla_put_failure;

	fields_attr = FUNC3(skb,
					    DEVLINK_ATTR_DPIPE_HEADER_FIELDS);
	if (!fields_attr)
		goto nla_put_failure;

	err = FUNC0(skb, header);
	if (err) {
		FUNC1(skb, fields_attr);
		goto nla_put_failure;
	}
	FUNC2(skb, fields_attr);
	FUNC2(skb, header_attr);
	return 0;

nla_put_failure:
	err = -EMSGSIZE;
	FUNC1(skb, header_attr);
	return err;
}