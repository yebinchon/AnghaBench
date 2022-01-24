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
struct tcmsg {int /*<<< orphan*/  tcm_handle; } ;
struct tcf_proto {int /*<<< orphan*/  root; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct net {int dummy; } ;
struct fw_head {int mask; } ;
struct TYPE_2__ {int classid; } ;
struct fw_filter {int /*<<< orphan*/  exts; scalar_t__ ifindex; TYPE_1__ res; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_FW_CLASSID ; 
 int /*<<< orphan*/  TCA_FW_INDEV ; 
 int /*<<< orphan*/  TCA_FW_MASK ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 struct net_device* FUNC0 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 struct fw_head* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct net *net, struct tcf_proto *tp, void *fh,
		   struct sk_buff *skb, struct tcmsg *t, bool rtnl_held)
{
	struct fw_head *head = FUNC6(tp->root);
	struct fw_filter *f = fh;
	struct nlattr *nest;

	if (f == NULL)
		return skb->len;

	t->tcm_handle = f->id;

	if (!f->res.classid && !FUNC9(&f->exts))
		return skb->len;

	nest = FUNC3(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;

	if (f->res.classid &&
	    FUNC5(skb, TCA_FW_CLASSID, f->res.classid))
		goto nla_put_failure;
	if (f->ifindex) {
		struct net_device *dev;
		dev = FUNC0(net, f->ifindex);
		if (dev && FUNC4(skb, TCA_FW_INDEV, dev->name))
			goto nla_put_failure;
	}
	if (head->mask != 0xFFFFFFFF &&
	    FUNC5(skb, TCA_FW_MASK, head->mask))
		goto nla_put_failure;

	if (FUNC7(skb, &f->exts) < 0)
		goto nla_put_failure;

	FUNC2(skb, nest);

	if (FUNC8(skb, &f->exts) < 0)
		goto nla_put_failure;

	return skb->len;

nla_put_failure:
	FUNC1(skb, nest);
	return -1;
}