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
struct net {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  NLMSG_DONE ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 size_t SMC_PNETID_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC1 (struct genl_info*) ; 
 int FUNC2 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct genl_info *info)
{
	struct net *net = FUNC1(info);
	struct sk_buff *msg;
	void *hdr;

	if (!info->attrs[SMC_PNETID_NAME])
		return -EINVAL;

	msg = FUNC5(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	FUNC0(net, msg, info->snd_portid, info->snd_seq,
		       FUNC3(info->attrs[SMC_PNETID_NAME]), 0);

	/* finish multi part message and send it */
	hdr = FUNC6(msg, info->snd_portid, info->snd_seq, NLMSG_DONE, 0,
			NLM_F_MULTI);
	if (!hdr) {
		FUNC4(msg);
		return -EMSGSIZE;
	}
	return FUNC2(msg, info);
}