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
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  int /*<<< orphan*/  u8 ;
struct xfrm_selector {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  XFRMNLGRP_REPORT ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,struct xfrm_selector*,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct net *net, u8 proto,
			    struct xfrm_selector *sel, xfrm_address_t *addr)
{
	struct sk_buff *skb;
	int err;

	skb = FUNC2(FUNC4(), GFP_ATOMIC);
	if (skb == NULL)
		return -ENOMEM;

	err = FUNC1(skb, proto, sel, addr);
	FUNC0(err < 0);

	return FUNC3(net, skb, 0, XFRMNLGRP_REPORT);
}