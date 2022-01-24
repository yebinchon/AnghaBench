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
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; struct devlink** user_ptr; } ;
struct devlink_dpipe_headers {int headers_count; int /*<<< orphan*/ * headers; } ;
struct devlink {int dummy; } ;
typedef  enum devlink_command { ____Placeholder_devlink_command } devlink_command ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_HEADERS ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  NLMSG_DONE ; 
 int NLM_F_MULTI ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff**,struct genl_info*) ; 
 int /*<<< orphan*/  devlink_nl_family ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct devlink*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct nlmsghdr* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct genl_info *info,
				      enum devlink_command cmd, int flags,
				      struct devlink_dpipe_headers *
				      dpipe_headers)
{
	struct devlink *devlink = info->user_ptr[0];
	struct nlattr *headers_attr;
	struct sk_buff *skb = NULL;
	struct nlmsghdr *nlh;
	void *hdr;
	int i, j;
	int err;

	i = 0;
start_again:
	err = FUNC1(&skb, info);
	if (err)
		return err;

	hdr = FUNC4(skb, info->snd_portid, info->snd_seq,
			  &devlink_nl_family, NLM_F_MULTI, cmd);
	if (!hdr) {
		FUNC8(skb);
		return -EMSGSIZE;
	}

	if (FUNC2(skb, devlink))
		goto nla_put_failure;
	headers_attr = FUNC7(skb, DEVLINK_ATTR_DPIPE_HEADERS);
	if (!headers_attr)
		goto nla_put_failure;

	j = 0;
	for (; i < dpipe_headers->headers_count; i++) {
		err = FUNC0(skb, dpipe_headers->headers[i]);
		if (err) {
			if (!j)
				goto err_table_put;
			break;
		}
		j++;
	}
	FUNC6(skb, headers_attr);
	FUNC3(skb, hdr);
	if (i != dpipe_headers->headers_count)
		goto start_again;

send_done:
	nlh = FUNC9(skb, info->snd_portid, info->snd_seq,
			NLMSG_DONE, 0, flags | NLM_F_MULTI);
	if (!nlh) {
		err = FUNC1(&skb, info);
		if (err)
			return err;
		goto send_done;
	}
	return FUNC5(skb, info);

nla_put_failure:
	err = -EMSGSIZE;
err_table_put:
	FUNC8(skb);
	return err;
}