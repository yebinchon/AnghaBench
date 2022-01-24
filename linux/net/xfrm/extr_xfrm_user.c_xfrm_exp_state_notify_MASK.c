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
struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct km_event {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  XFRMNLGRP_EXPIRE ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct xfrm_state*,struct km_event const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC5 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC6(struct xfrm_state *x, const struct km_event *c)
{
	struct net *net = FUNC5(x);
	struct sk_buff *skb;

	skb = FUNC2(FUNC3(), GFP_ATOMIC);
	if (skb == NULL)
		return -ENOMEM;

	if (FUNC0(skb, x, c) < 0) {
		FUNC1(skb);
		return -EMSGSIZE;
	}

	return FUNC4(net, skb, 0, XFRMNLGRP_EXPIRE);
}