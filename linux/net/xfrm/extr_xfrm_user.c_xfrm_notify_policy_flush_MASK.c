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
struct nlmsghdr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct km_event {TYPE_1__ data; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; struct net* net; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  XFRMNLGRP_POLICY ; 
 int /*<<< orphan*/  XFRM_MSG_FLUSHPOLICY ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlmsghdr*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(const struct km_event *c)
{
	struct net *net = c->net;
	struct nlmsghdr *nlh;
	struct sk_buff *skb;
	int err;

	skb = FUNC3(FUNC5(), GFP_ATOMIC);
	if (skb == NULL)
		return -ENOMEM;

	nlh = FUNC4(skb, c->portid, c->seq, XFRM_MSG_FLUSHPOLICY, 0, 0);
	err = -EMSGSIZE;
	if (nlh == NULL)
		goto out_free_skb;
	err = FUNC0(c->data.type, skb);
	if (err)
		goto out_free_skb;

	FUNC2(skb, nlh);

	return FUNC6(net, skb, 0, XFRMNLGRP_POLICY);

out_free_skb:
	FUNC1(skb);
	return err;
}