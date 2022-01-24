#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tipc_nl_compat_msg {int cmd; TYPE_1__* rep; int /*<<< orphan*/  net; scalar_t__ req_size; scalar_t__ req; int /*<<< orphan*/  dst_sk; } ;
struct tipc_genlmsghdr {int cmd; } ;
struct sk_buff {int /*<<< orphan*/  sk; scalar_t__ data; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_len; } ;
struct genl_info {int /*<<< orphan*/  nlhdr; struct tipc_genlmsghdr* userhdr; } ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_6__ {int /*<<< orphan*/  portid; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EACCES ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 scalar_t__ GENL_HDRLEN ; 
 TYPE_4__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  TIPC_CFG_NOT_NET_ADMIN ; 
 int /*<<< orphan*/  TIPC_CFG_NOT_SUPPORTED ; 
 int /*<<< orphan*/  TIPC_CFG_TLV_ERROR ; 
 scalar_t__ TIPC_GENL_HDRLEN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nlmsghdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_nl_compat_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct nlmsghdr*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC9 (TYPE_1__*) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct tipc_nl_compat_msg*) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb, struct genl_info *info)
{
	int err;
	int len;
	struct tipc_nl_compat_msg msg;
	struct nlmsghdr *req_nlh;
	struct nlmsghdr *rep_nlh;
	struct tipc_genlmsghdr *req_userhdr = info->userhdr;

	FUNC5(&msg, 0, sizeof(msg));

	req_nlh = (struct nlmsghdr *)skb->data;
	msg.req = FUNC8(req_nlh) + GENL_HDRLEN + TIPC_GENL_HDRLEN;
	msg.cmd = req_userhdr->cmd;
	msg.net = FUNC2(info);
	msg.dst_sk = skb->sk;

	if ((msg.cmd & 0xC000) && (!FUNC6(skb, CAP_NET_ADMIN))) {
		msg.rep = FUNC12(TIPC_CFG_NOT_NET_ADMIN);
		err = -EACCES;
		goto send;
	}

	msg.req_size = FUNC7(req_nlh, GENL_HDRLEN + TIPC_GENL_HDRLEN);
	if (msg.req_size && !FUNC1(msg.req, msg.req_size)) {
		msg.rep = FUNC12(TIPC_CFG_NOT_SUPPORTED);
		err = -EOPNOTSUPP;
		goto send;
	}

	err = FUNC13(&msg);
	if ((err == -EOPNOTSUPP) || (err == -EPERM))
		msg.rep = FUNC12(TIPC_CFG_NOT_SUPPORTED);
	else if (err == -EINVAL)
		msg.rep = FUNC12(TIPC_CFG_TLV_ERROR);
send:
	if (!msg.rep)
		return err;

	len = FUNC10(GENL_HDRLEN + TIPC_GENL_HDRLEN);
	FUNC11(msg.rep, len);
	rep_nlh = FUNC9(msg.rep);
	FUNC4(rep_nlh, info->nlhdr, len);
	rep_nlh->nlmsg_len = msg.rep->len;
	FUNC3(msg.net, msg.rep, FUNC0(skb).portid);

	return err;
}