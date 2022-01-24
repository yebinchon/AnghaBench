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
struct xfrm_userpolicy_info {int dummy; } ;
struct xfrm_userpolicy_id {int dir; int /*<<< orphan*/  sel; int /*<<< orphan*/  index; } ;
struct xfrm_user_tmpl {int dummy; } ;
struct xfrm_policy {int xfrm_nr; int /*<<< orphan*/  if_id; int /*<<< orphan*/  mark; int /*<<< orphan*/  type; int /*<<< orphan*/  selector; int /*<<< orphan*/  index; } ;
struct xfrm_mark {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ byid; } ;
struct km_event {TYPE_1__ data; int /*<<< orphan*/  event; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  XFRMA_POLICY ; 
 int /*<<< orphan*/  XFRMNLGRP_POLICY ; 
 int /*<<< orphan*/  XFRM_MSG_DELPOLICY ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_policy*,struct xfrm_userpolicy_info*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC3 (struct xfrm_policy*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xfrm_userpolicy_id*,int /*<<< orphan*/ ,int) ; 
 struct xfrm_userpolicy_info* FUNC7 (struct nlattr*) ; 
 struct nlattr* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC9 (int) ; 
 void* FUNC10 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct nlmsghdr*) ; 
 struct sk_buff* FUNC12 (unsigned int,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 () ; 
 int FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC18 (struct xfrm_policy*) ; 

__attribute__((used)) static int FUNC19(struct xfrm_policy *xp, int dir, const struct km_event *c)
{
	unsigned int len = FUNC9(sizeof(struct xfrm_user_tmpl) * xp->xfrm_nr);
	struct net *net = FUNC18(xp);
	struct xfrm_userpolicy_info *p;
	struct xfrm_userpolicy_id *id;
	struct nlmsghdr *nlh;
	struct sk_buff *skb;
	unsigned int headlen;
	int err;

	headlen = sizeof(*p);
	if (c->event == XFRM_MSG_DELPOLICY) {
		len += FUNC9(headlen);
		headlen = sizeof(*id);
	}
	len += FUNC14();
	len += FUNC9(sizeof(struct xfrm_mark));
	len += FUNC0(headlen);

	skb = FUNC12(len, GFP_ATOMIC);
	if (skb == NULL)
		return -ENOMEM;

	nlh = FUNC13(skb, c->portid, c->seq, c->event, headlen, 0);
	err = -EMSGSIZE;
	if (nlh == NULL)
		goto out_free_skb;

	p = FUNC10(nlh);
	if (c->event == XFRM_MSG_DELPOLICY) {
		struct nlattr *attr;

		id = FUNC10(nlh);
		FUNC6(id, 0, sizeof(*id));
		id->dir = dir;
		if (c->data.byid)
			id->index = xp->index;
		else
			FUNC5(&id->sel, &xp->selector, sizeof(id->sel));

		attr = FUNC8(skb, XFRMA_POLICY, sizeof(*p));
		err = -EMSGSIZE;
		if (attr == NULL)
			goto out_free_skb;

		p = FUNC7(attr);
	}

	FUNC1(xp, p, dir);
	err = FUNC3(xp, skb);
	if (!err)
		err = FUNC2(xp->type, skb);
	if (!err)
		err = FUNC16(skb, &xp->mark);
	if (!err)
		err = FUNC15(skb, xp->if_id);
	if (err)
		goto out_free_skb;

	FUNC11(skb, nlh);

	return FUNC17(net, skb, 0, XFRMNLGRP_POLICY);

out_free_skb:
	FUNC4(skb);
	return err;
}