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
struct nlattr {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct hsr_priv {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_portid; int /*<<< orphan*/  snd_seq; struct nlattr** attrs; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t HSR_A_IFINDEX ; 
 int /*<<< orphan*/  HSR_A_NODE_ADDR ; 
 int /*<<< orphan*/  HSR_C_SET_NODE_LIST ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hsr_genl_family ; 
 void* FUNC7 (struct hsr_priv*,void*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct hsr_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct nlattr*) ; 
 int FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int FUNC14 (struct sk_buff*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static int FUNC18(struct sk_buff *skb_in, struct genl_info *info)
{
	/* For receiving */
	struct nlattr *na;
	struct net_device *hsr_dev;

	/* For sending */
	struct sk_buff *skb_out;
	void *msg_head;
	struct hsr_priv *hsr;
	void *pos;
	unsigned char addr[ETH_ALEN];
	int res;

	if (!info)
		goto invalid;

	na = info->attrs[HSR_A_IFINDEX];
	if (!na)
		goto invalid;

	hsr_dev = FUNC1(FUNC2(info),
				     FUNC12(info->attrs[HSR_A_IFINDEX]));
	if (!hsr_dev)
		goto invalid;
	if (!FUNC8(hsr_dev))
		goto invalid;

	/* Send reply */
	skb_out = FUNC4(NLMSG_GOODSIZE, GFP_KERNEL);
	if (!skb_out) {
		res = -ENOMEM;
		goto fail;
	}

	msg_head = FUNC5(skb_out, FUNC0(skb_in).portid,
			       info->snd_seq, &hsr_genl_family, 0,
			       HSR_C_SET_NODE_LIST);
	if (!msg_head) {
		res = -ENOMEM;
		goto nla_put_failure;
	}

	res = FUNC14(skb_out, HSR_A_IFINDEX, hsr_dev->ifindex);
	if (res < 0)
		goto nla_put_failure;

	hsr = FUNC10(hsr_dev);

	FUNC16();
	pos = FUNC7(hsr, NULL, addr);
	while (pos) {
		res = FUNC13(skb_out, HSR_A_NODE_ADDR, ETH_ALEN, addr);
		if (res < 0) {
			FUNC17();
			goto nla_put_failure;
		}
		pos = FUNC7(hsr, pos, addr);
	}
	FUNC17();

	FUNC3(skb_out, msg_head);
	FUNC6(FUNC2(info), skb_out, info->snd_portid);

	return 0;

invalid:
	FUNC11(skb_in, FUNC15(skb_in), -EINVAL, NULL);
	return 0;

nla_put_failure:
	FUNC9(skb_out);
	/* Fall through */

fail:
	return res;
}