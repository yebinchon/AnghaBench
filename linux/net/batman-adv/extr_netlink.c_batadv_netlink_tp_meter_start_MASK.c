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
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; int /*<<< orphan*/ * attrs; struct batadv_priv** user_ptr; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 size_t BATADV_ATTR_ORIG_ADDRESS ; 
 size_t BATADV_ATTR_TPMETER_TEST_TIME ; 
 int /*<<< orphan*/  BATADV_CMD_TP_METER ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  batadv_netlink_family ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct sk_buff *skb, struct genl_info *info)
{
	struct batadv_priv *bat_priv = info->user_ptr[0];
	struct sk_buff *msg = NULL;
	u32 test_length;
	void *msg_head;
	u32 cookie;
	u8 *dst;
	int ret;

	if (!info->attrs[BATADV_ATTR_ORIG_ADDRESS])
		return -EINVAL;

	if (!info->attrs[BATADV_ATTR_TPMETER_TEST_TIME])
		return -EINVAL;

	dst = FUNC5(info->attrs[BATADV_ATTR_ORIG_ADDRESS]);

	test_length = FUNC6(info->attrs[BATADV_ATTR_TPMETER_TEST_TIME]);

	msg = FUNC8(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg) {
		ret = -ENOMEM;
		goto out;
	}

	msg_head = FUNC3(msg, info->snd_portid, info->snd_seq,
			       &batadv_netlink_family, 0,
			       BATADV_CMD_TP_METER);
	if (!msg_head) {
		ret = -ENOBUFS;
		goto out;
	}

	FUNC1(bat_priv, dst, test_length, &cookie);

	ret = FUNC0(msg, cookie);

 out:
	if (ret) {
		if (msg)
			FUNC7(msg);
		return ret;
	}

	FUNC2(msg, msg_head);
	return FUNC4(msg, info);
}