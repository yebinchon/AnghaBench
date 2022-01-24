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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; int /*<<< orphan*/  attrs; int /*<<< orphan*/  userhdr; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct datapath*) ; 
 int /*<<< orphan*/  OVS_DP_CMD_DEL ; 
 int FUNC2 (struct datapath*) ; 
 int /*<<< orphan*/  FUNC3 (struct datapath*) ; 
 int /*<<< orphan*/  dp_datapath_genl_family ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct datapath* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 () ; 
 int FUNC7 (struct datapath*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct genl_info *info)
{
	struct sk_buff *reply;
	struct datapath *dp;
	int err;

	reply = FUNC6();
	if (!reply)
		return -ENOMEM;

	FUNC8();
	dp = FUNC5(FUNC11(skb->sk), info->userhdr, info->attrs);
	err = FUNC2(dp);
	if (FUNC1(dp))
		goto err_unlock_free;

	err = FUNC7(dp, reply, info->snd_portid,
				   info->snd_seq, 0, OVS_DP_CMD_DEL);
	FUNC0(err < 0);

	FUNC3(dp);
	FUNC10();

	FUNC9(&dp_datapath_genl_family, reply, info);

	return 0;

err_unlock_free:
	FUNC10();
	FUNC4(reply);
	return err;
}