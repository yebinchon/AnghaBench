#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct l2tp_session {int /*<<< orphan*/  reorder_timeout; void* lns_mode; TYPE_1__* tunnel; void* send_seq; void* recv_seq; int /*<<< orphan*/  debug; } ;
struct genl_info {scalar_t__* attrs; } ;
struct TYPE_2__ {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int ENODEV ; 
 size_t L2TP_ATTR_DEBUG ; 
 size_t L2TP_ATTR_LNS_MODE ; 
 size_t L2TP_ATTR_RECV_SEQ ; 
 size_t L2TP_ATTR_RECV_TIMEOUT ; 
 size_t L2TP_ATTR_SEND_SEQ ; 
 int /*<<< orphan*/  L2TP_CMD_SESSION_MODIFY ; 
 int /*<<< orphan*/  l2tp_nl_family ; 
 struct l2tp_session* FUNC0 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct l2tp_session*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct genl_info*,struct l2tp_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l2tp_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 void* FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct genl_info *info)
{
	int ret = 0;
	struct l2tp_session *session;

	session = FUNC0(info);
	if (session == NULL) {
		ret = -ENODEV;
		goto out;
	}

	if (info->attrs[L2TP_ATTR_DEBUG])
		session->debug = FUNC5(info->attrs[L2TP_ATTR_DEBUG]);

	if (info->attrs[L2TP_ATTR_RECV_SEQ])
		session->recv_seq = FUNC6(info->attrs[L2TP_ATTR_RECV_SEQ]);

	if (info->attrs[L2TP_ATTR_SEND_SEQ]) {
		session->send_seq = FUNC6(info->attrs[L2TP_ATTR_SEND_SEQ]);
		FUNC3(session, session->tunnel->version);
	}

	if (info->attrs[L2TP_ATTR_LNS_MODE])
		session->lns_mode = FUNC6(info->attrs[L2TP_ATTR_LNS_MODE]);

	if (info->attrs[L2TP_ATTR_RECV_TIMEOUT])
		session->reorder_timeout = FUNC4(info->attrs[L2TP_ATTR_RECV_TIMEOUT]);

	ret = FUNC2(&l2tp_nl_family, info,
				  session, L2TP_CMD_SESSION_MODIFY);

	FUNC1(session);

out:
	return ret;
}