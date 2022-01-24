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
struct sk_buff {int /*<<< orphan*/  lock; scalar_t__ keep_stats; int /*<<< orphan*/  sk; } ;
struct ovs_header {int /*<<< orphan*/  dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct genl_info {struct ovs_header* userhdr; struct nlattr** attrs; } ;
struct dp_meter {int /*<<< orphan*/  lock; scalar_t__ keep_stats; int /*<<< orphan*/  sk; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 size_t OVS_METER_ATTR_ID ; 
 int /*<<< orphan*/  OVS_METER_CMD_SET ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct datapath*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (struct nlattr**) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct ovs_header*) ; 
 int FUNC8 (struct sk_buff*,struct genl_info*) ; 
 struct datapath* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 struct sk_buff* FUNC11 (struct datapath*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nlattr*) ; 
 int FUNC13 (struct sk_buff*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 struct sk_buff* FUNC16 (struct genl_info*,int /*<<< orphan*/ ,struct ovs_header**) ; 
 int FUNC17 (struct sk_buff*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr **a = info->attrs;
	struct dp_meter *meter, *old_meter;
	struct sk_buff *reply;
	struct ovs_header *ovs_reply_header;
	struct ovs_header *ovs_header = info->userhdr;
	struct datapath *dp;
	int err;
	u32 meter_id;
	bool failed;

	if (!a[OVS_METER_ATTR_ID]) {
		return -ENODEV;
	}

	meter = FUNC6(a);
	if (FUNC1(meter))
		return FUNC2(meter);

	reply = FUNC16(info, OVS_METER_CMD_SET,
					  &ovs_reply_header);
	if (FUNC0(reply)) {
		err = FUNC2(reply);
		goto exit_free_meter;
	}

	FUNC15();
	dp = FUNC9(FUNC20(skb->sk), ovs_header->dp_ifindex);
	if (!dp) {
		err = -ENODEV;
		goto exit_unlock;
	}

	meter_id = FUNC12(a[OVS_METER_ATTR_ID]);

	/* Cannot fail after this. */
	old_meter = FUNC11(dp, meter_id);
	FUNC5(old_meter);
	FUNC4(dp, meter);
	FUNC19();

	/* Build response with the meter_id and stats from
	 * the old meter, if any.
	 */
	failed = FUNC13(reply, OVS_METER_ATTR_ID, meter_id);
	FUNC3(failed);
	if (old_meter) {
		FUNC21(&old_meter->lock);
		if (old_meter->keep_stats) {
			err = FUNC17(reply, meter_id,
							old_meter);
			FUNC3(err);
		}
		FUNC22(&old_meter->lock);
		FUNC18(old_meter);
	}

	FUNC7(reply, ovs_reply_header);
	return FUNC8(reply, info);

exit_unlock:
	FUNC19();
	FUNC14(reply);
exit_free_meter:
	FUNC10(meter);
	return err;
}