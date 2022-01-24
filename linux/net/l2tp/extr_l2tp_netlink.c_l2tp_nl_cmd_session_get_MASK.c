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
struct l2tp_session {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_portid; int /*<<< orphan*/  snd_seq; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  L2TP_CMD_SESSION_GET ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct genl_info*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct l2tp_session* FUNC2 (struct genl_info*) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct l2tp_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct l2tp_session*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct genl_info *info)
{
	struct l2tp_session *session;
	struct sk_buff *msg;
	int ret;

	session = FUNC2(info);
	if (session == NULL) {
		ret = -ENODEV;
		goto err;
	}

	msg = FUNC6(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg) {
		ret = -ENOMEM;
		goto err_ref;
	}

	ret = FUNC3(msg, info->snd_portid, info->snd_seq,
				   0, session, L2TP_CMD_SESSION_GET);
	if (ret < 0)
		goto err_ref_msg;

	ret = FUNC1(FUNC0(info), msg, info->snd_portid);

	FUNC4(session);

	return ret;

err_ref_msg:
	FUNC5(msg);
err_ref:
	FUNC4(session);
err:
	return ret;
}