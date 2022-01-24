#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tcmsg {int /*<<< orphan*/  tcm_handle; } ;
struct tcf_proto {int /*<<< orphan*/  lock; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct fl_flow_key {int dummy; } ;
struct TYPE_3__ {scalar_t__ classid; } ;
struct cls_fl_filter {int /*<<< orphan*/  exts; scalar_t__ in_hw_count; scalar_t__ flags; TYPE_2__* mask; struct fl_flow_key key; TYPE_1__ res; int /*<<< orphan*/  handle; } ;
struct TYPE_4__ {struct fl_flow_key key; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_FLOWER_CLASSID ; 
 int /*<<< orphan*/  TCA_FLOWER_FLAGS ; 
 int /*<<< orphan*/  TCA_FLOWER_IN_HW_COUNT ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct net*,struct fl_flow_key*,struct fl_flow_key*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcf_proto*,struct cls_fl_filter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct net *net, struct tcf_proto *tp, void *fh,
		   struct sk_buff *skb, struct tcmsg *t, bool rtnl_held)
{
	struct cls_fl_filter *f = fh;
	struct nlattr *nest;
	struct fl_flow_key *key, *mask;
	bool skip_hw;

	if (!f)
		return skb->len;

	t->tcm_handle = f->handle;

	nest = FUNC4(skb, TCA_OPTIONS);
	if (!nest)
		goto nla_put_failure;

	FUNC6(&tp->lock);

	if (f->res.classid &&
	    FUNC5(skb, TCA_FLOWER_CLASSID, f->res.classid))
		goto nla_put_failure_locked;

	key = &f->key;
	mask = &f->mask->key;
	skip_hw = FUNC8(f->flags);

	if (FUNC0(skb, net, key, mask))
		goto nla_put_failure_locked;

	if (f->flags && FUNC5(skb, TCA_FLOWER_FLAGS, f->flags))
		goto nla_put_failure_locked;

	FUNC7(&tp->lock);

	if (!skip_hw)
		FUNC1(tp, f, rtnl_held);

	if (FUNC5(skb, TCA_FLOWER_IN_HW_COUNT, f->in_hw_count))
		goto nla_put_failure;

	if (FUNC9(skb, &f->exts))
		goto nla_put_failure;

	FUNC3(skb, nest);

	if (FUNC10(skb, &f->exts) < 0)
		goto nla_put_failure;

	return skb->len;

nla_put_failure_locked:
	FUNC7(&tp->lock);
nla_put_failure:
	FUNC2(skb, nest);
	return -1;
}