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
struct sk_buff {int dummy; } ;
struct l2tp_session {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; } ;
struct genl_family {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  NLM_F_ACK ; 
 int FUNC0 (struct genl_family*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct l2tp_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct genl_family *family,
			       struct genl_info *info,
			       struct l2tp_session *session,
			       u8 cmd)
{
	struct sk_buff *msg;
	int ret;

	msg = FUNC3(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	ret = FUNC1(msg, info->snd_portid, info->snd_seq,
				   NLM_F_ACK, session, cmd);

	if (ret >= 0) {
		ret = FUNC0(family, msg, 0, 0, GFP_ATOMIC);
		/* We don't care if no one is listening */
		if (ret == -ESRCH)
			ret = 0;
		return ret;
	}

	FUNC2(msg);

	return ret;
}