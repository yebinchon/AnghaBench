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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct ovs_header {int /*<<< orphan*/  dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct genl_info {struct ovs_header* userhdr; struct nlattr** attrs; } ;
struct dp_meter {int /*<<< orphan*/  lock; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 size_t OVS_METER_ATTR_ID ; 
 int /*<<< orphan*/  OVS_METER_CMD_DEL ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dp_meter*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct ovs_header*) ; 
 int FUNC5 (struct sk_buff*,struct genl_info*) ; 
 struct datapath* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dp_meter* FUNC7 (struct datapath*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 struct sk_buff* FUNC11 (struct genl_info*,int /*<<< orphan*/ ,struct ovs_header**) ; 
 int FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,struct dp_meter*) ; 
 int /*<<< orphan*/  FUNC13 (struct dp_meter*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr **a = info->attrs;
	u32 meter_id;
	struct ovs_header *ovs_header = info->userhdr;
	struct ovs_header *ovs_reply_header;
	struct datapath *dp;
	int err;
	struct sk_buff *reply;
	struct dp_meter *old_meter;

	if (!a[OVS_METER_ATTR_ID])
		return -EINVAL;
	meter_id = FUNC8(a[OVS_METER_ATTR_ID]);

	reply = FUNC11(info, OVS_METER_CMD_DEL,
					  &ovs_reply_header);
	if (FUNC0(reply))
		return FUNC1(reply);

	FUNC10();

	dp = FUNC6(FUNC15(skb->sk), ovs_header->dp_ifindex);
	if (!dp) {
		err = -ENODEV;
		goto exit_unlock;
	}

	old_meter = FUNC7(dp, meter_id);
	if (old_meter) {
		FUNC16(&old_meter->lock);
		err = FUNC12(reply, meter_id, old_meter);
		FUNC2(err);
		FUNC17(&old_meter->lock);
		FUNC3(old_meter);
	}
	FUNC14();
	FUNC13(old_meter);
	FUNC4(reply, ovs_reply_header);
	return FUNC5(reply, info);

exit_unlock:
	FUNC14();
	FUNC9(reply);
	return err;
}