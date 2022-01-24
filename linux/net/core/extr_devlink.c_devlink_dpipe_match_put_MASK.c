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
struct devlink_dpipe_match {size_t field_id; int /*<<< orphan*/  header_index; int /*<<< orphan*/  type; struct devlink_dpipe_header* header; } ;
struct devlink_dpipe_header {int /*<<< orphan*/  global; int /*<<< orphan*/  id; struct devlink_dpipe_field* fields; } ;
struct devlink_dpipe_field {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_FIELD_ID ; 
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_HEADER_GLOBAL ; 
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_HEADER_ID ; 
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_HEADER_INDEX ; 
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_MATCH ; 
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_MATCH_TYPE ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct sk_buff *skb,
			    struct devlink_dpipe_match *match)
{
	struct devlink_dpipe_header *header = match->header;
	struct devlink_dpipe_field *field = &header->fields[match->field_id];
	struct nlattr *match_attr;

	match_attr = FUNC2(skb, DEVLINK_ATTR_DPIPE_MATCH);
	if (!match_attr)
		return -EMSGSIZE;

	if (FUNC3(skb, DEVLINK_ATTR_DPIPE_MATCH_TYPE, match->type) ||
	    FUNC3(skb, DEVLINK_ATTR_DPIPE_HEADER_INDEX, match->header_index) ||
	    FUNC3(skb, DEVLINK_ATTR_DPIPE_HEADER_ID, header->id) ||
	    FUNC3(skb, DEVLINK_ATTR_DPIPE_FIELD_ID, field->id) ||
	    FUNC4(skb, DEVLINK_ATTR_DPIPE_HEADER_GLOBAL, header->global))
		goto nla_put_failure;

	FUNC1(skb, match_attr);
	return 0;

nla_put_failure:
	FUNC0(skb, match_attr);
	return -EMSGSIZE;
}