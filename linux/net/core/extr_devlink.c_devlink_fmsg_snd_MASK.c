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
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; } ;
struct devlink_fmsg {int dummy; } ;
typedef  enum devlink_command { ____Placeholder_devlink_command } devlink_command ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GENLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DONE ; 
 int NLM_F_MULTI ; 
 int FUNC0 (struct devlink_fmsg*,struct sk_buff*,int*) ; 
 int /*<<< orphan*/  devlink_nl_family ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct nlmsghdr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct devlink_fmsg *fmsg,
			    struct genl_info *info,
			    enum devlink_command cmd, int flags)
{
	struct nlmsghdr *nlh;
	struct sk_buff *skb;
	bool last = false;
	int index = 0;
	void *hdr;
	int err;

	while (!last) {
		int tmp_index = index;

		skb = FUNC2(GENLMSG_DEFAULT_SIZE, GFP_KERNEL);
		if (!skb)
			return -ENOMEM;

		hdr = FUNC3(skb, info->snd_portid, info->snd_seq,
				  &devlink_nl_family, flags | NLM_F_MULTI, cmd);
		if (!hdr) {
			err = -EMSGSIZE;
			goto nla_put_failure;
		}

		err = FUNC0(fmsg, skb, &index);
		if (!err)
			last = true;
		else if (err != -EMSGSIZE || tmp_index == index)
			goto nla_put_failure;

		FUNC1(skb, hdr);
		err = FUNC4(skb, info);
		if (err)
			return err;
	}

	skb = FUNC2(GENLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!skb)
		return -ENOMEM;
	nlh = FUNC6(skb, info->snd_portid, info->snd_seq,
			NLMSG_DONE, 0, flags | NLM_F_MULTI);
	if (!nlh) {
		err = -EMSGSIZE;
		goto nla_put_failure;
	}

	return FUNC4(skb, info);

nla_put_failure:
	FUNC5(skb);
	return err;
}