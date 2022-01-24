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
 int ENOENT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 size_t OVS_METER_ATTR_ID ; 
 int /*<<< orphan*/  OVS_METER_CMD_GET ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct ovs_header*) ; 
 int FUNC3 (struct sk_buff*,struct genl_info*) ; 
 struct datapath* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dp_meter* FUNC5 (struct datapath*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct sk_buff* FUNC9 (struct genl_info*,int /*<<< orphan*/ ,struct ovs_header**) ; 
 int FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,struct dp_meter*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr **a = info->attrs;
	u32 meter_id;
	struct ovs_header *ovs_header = info->userhdr;
	struct ovs_header *ovs_reply_header;
	struct datapath *dp;
	int err;
	struct sk_buff *reply;
	struct dp_meter *meter;

	if (!a[OVS_METER_ATTR_ID])
		return -EINVAL;

	meter_id = FUNC6(a[OVS_METER_ATTR_ID]);

	reply = FUNC9(info, OVS_METER_CMD_GET,
					  &ovs_reply_header);
	if (FUNC0(reply))
		return FUNC1(reply);

	FUNC8();

	dp = FUNC4(FUNC12(skb->sk), ovs_header->dp_ifindex);
	if (!dp) {
		err = -ENODEV;
		goto exit_unlock;
	}

	/* Locate meter, copy stats. */
	meter = FUNC5(dp, meter_id);
	if (!meter) {
		err = -ENOENT;
		goto exit_unlock;
	}

	FUNC13(&meter->lock);
	err = FUNC10(reply, meter_id, meter);
	FUNC14(&meter->lock);
	if (err)
		goto exit_unlock;

	FUNC11();

	FUNC2(reply, ovs_reply_header);
	return FUNC3(reply, info);

exit_unlock:
	FUNC11();
	FUNC7(reply);
	return err;
}