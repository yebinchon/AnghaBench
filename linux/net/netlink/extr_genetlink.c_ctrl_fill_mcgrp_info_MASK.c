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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_multicast_group {int /*<<< orphan*/  name; } ;
struct genl_family {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_ATTR_FAMILY_ID ; 
 int /*<<< orphan*/  CTRL_ATTR_FAMILY_NAME ; 
 int CTRL_ATTR_MCAST_GROUPS ; 
 int /*<<< orphan*/  CTRL_ATTR_MCAST_GRP_ID ; 
 int /*<<< orphan*/  CTRL_ATTR_MCAST_GRP_NAME ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  genl_ctrl ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(const struct genl_family *family,
				const struct genl_multicast_group *grp,
				int grp_id, u32 portid, u32 seq, u32 flags,
				struct sk_buff *skb, u8 cmd)
{
	void *hdr;
	struct nlattr *nla_grps;
	struct nlattr *nest;

	hdr = FUNC2(skb, portid, seq, &genl_ctrl, flags, cmd);
	if (hdr == NULL)
		return -1;

	if (FUNC5(skb, CTRL_ATTR_FAMILY_NAME, family->name) ||
	    FUNC6(skb, CTRL_ATTR_FAMILY_ID, family->id))
		goto nla_put_failure;

	nla_grps = FUNC4(skb, CTRL_ATTR_MCAST_GROUPS);
	if (nla_grps == NULL)
		goto nla_put_failure;

	nest = FUNC4(skb, 1);
	if (nest == NULL)
		goto nla_put_failure;

	if (FUNC7(skb, CTRL_ATTR_MCAST_GRP_ID, grp_id) ||
	    FUNC5(skb, CTRL_ATTR_MCAST_GRP_NAME,
			   grp->name))
		goto nla_put_failure;

	FUNC3(skb, nest);
	FUNC3(skb, nla_grps);

	FUNC1(skb, hdr);
	return 0;

nla_put_failure:
	FUNC0(skb, hdr);
	return -EMSGSIZE;
}