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
typedef  int /*<<< orphan*/  u32 ;
struct sw_flow_match {int dummy; } ;
struct sw_flow_key {int dummy; } ;
struct sw_flow_id {int dummy; } ;
struct sw_flow {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct ovs_header {int /*<<< orphan*/  dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {struct ovs_header* userhdr; struct nlattr** attrs; } ;
struct datapath {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 size_t OVS_FLOW_ATTR_KEY ; 
 size_t OVS_FLOW_ATTR_PROBE ; 
 size_t OVS_FLOW_ATTR_UFID ; 
 size_t OVS_FLOW_ATTR_UFID_FLAGS ; 
 int /*<<< orphan*/  OVS_FLOW_CMD_GET ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*,struct genl_info*) ; 
 struct datapath* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (struct sw_flow*,int /*<<< orphan*/ ,struct genl_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct sw_flow* FUNC6 (int /*<<< orphan*/ *,struct sw_flow_match*) ; 
 struct sw_flow* FUNC7 (int /*<<< orphan*/ *,struct sw_flow_id*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct sw_flow_match*,struct sw_flow_key*,int,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct net*,struct sw_flow_match*,struct nlattr*,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (struct sw_flow_id*,struct nlattr*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 struct net* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr **a = info->attrs;
	struct ovs_header *ovs_header = info->userhdr;
	struct net *net = FUNC14(skb->sk);
	struct sw_flow_key key;
	struct sk_buff *reply;
	struct sw_flow *flow;
	struct datapath *dp;
	struct sw_flow_match match;
	struct sw_flow_id ufid;
	u32 ufid_flags = FUNC12(a[OVS_FLOW_ATTR_UFID_FLAGS]);
	int err = 0;
	bool log = !a[OVS_FLOW_ATTR_PROBE];
	bool ufid_present;

	ufid_present = FUNC11(&ufid, a[OVS_FLOW_ATTR_UFID], log);
	if (a[OVS_FLOW_ATTR_KEY]) {
		FUNC9(&match, &key, true, NULL);
		err = FUNC10(net, &match, a[OVS_FLOW_ATTR_KEY], NULL,
					log);
	} else if (!ufid_present) {
		FUNC1(log,
			  "Flow get message rejected, Key attribute missing.");
		err = -EINVAL;
	}
	if (err)
		return err;

	FUNC8();
	dp = FUNC4(FUNC14(skb->sk), ovs_header->dp_ifindex);
	if (!dp) {
		err = -ENODEV;
		goto unlock;
	}

	if (ufid_present)
		flow = FUNC7(&dp->table, &ufid);
	else
		flow = FUNC6(&dp->table, &match);
	if (!flow) {
		err = -ENOENT;
		goto unlock;
	}

	reply = FUNC5(flow, ovs_header->dp_ifindex, info,
					OVS_FLOW_CMD_GET, true, ufid_flags);
	if (FUNC0(reply)) {
		err = FUNC2(reply);
		goto unlock;
	}

	FUNC13();
	return FUNC3(reply, info);
unlock:
	FUNC13();
	return err;
}