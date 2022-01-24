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
struct xfrm_usersa_info {int dummy; } ;
struct xfrm_usersa_id {int /*<<< orphan*/  proto; int /*<<< orphan*/  family; int /*<<< orphan*/  spi; int /*<<< orphan*/  daddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  proto; int /*<<< orphan*/  spi; int /*<<< orphan*/  daddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  family; } ;
struct xfrm_state {TYPE_2__ id; TYPE_1__ props; } ;
struct xfrm_mark {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct km_event {int /*<<< orphan*/  event; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  XFRMA_SA ; 
 int /*<<< orphan*/  XFRMNLGRP_SA ; 
 int /*<<< orphan*/  XFRM_MSG_DELSA ; 
 int FUNC1 (struct xfrm_state*,struct xfrm_usersa_info*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_usersa_id*,int /*<<< orphan*/ ,int) ; 
 struct xfrm_usersa_info* FUNC5 (struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int) ; 
 void* FUNC8 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlmsghdr*) ; 
 struct sk_buff* FUNC10 (unsigned int,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC13 (struct xfrm_state*) ; 
 struct net* FUNC14 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC15(struct xfrm_state *x, const struct km_event *c)
{
	struct net *net = FUNC14(x);
	struct xfrm_usersa_info *p;
	struct xfrm_usersa_id *id;
	struct nlmsghdr *nlh;
	struct sk_buff *skb;
	unsigned int len = FUNC13(x);
	unsigned int headlen;
	int err;

	headlen = sizeof(*p);
	if (c->event == XFRM_MSG_DELSA) {
		len += FUNC7(headlen);
		headlen = sizeof(*id);
		len += FUNC7(sizeof(struct xfrm_mark));
	}
	len += FUNC0(headlen);

	skb = FUNC10(len, GFP_ATOMIC);
	if (skb == NULL)
		return -ENOMEM;

	nlh = FUNC11(skb, c->portid, c->seq, c->event, headlen, 0);
	err = -EMSGSIZE;
	if (nlh == NULL)
		goto out_free_skb;

	p = FUNC8(nlh);
	if (c->event == XFRM_MSG_DELSA) {
		struct nlattr *attr;

		id = FUNC8(nlh);
		FUNC4(id, 0, sizeof(*id));
		FUNC3(&id->daddr, &x->id.daddr, sizeof(id->daddr));
		id->spi = x->id.spi;
		id->family = x->props.family;
		id->proto = x->id.proto;

		attr = FUNC6(skb, XFRMA_SA, sizeof(*p));
		err = -EMSGSIZE;
		if (attr == NULL)
			goto out_free_skb;

		p = FUNC5(attr);
	}
	err = FUNC1(x, p, skb);
	if (err)
		goto out_free_skb;

	FUNC9(skb, nlh);

	return FUNC12(net, skb, 0, XFRMNLGRP_SA);

out_free_skb:
	FUNC2(skb);
	return err;
}