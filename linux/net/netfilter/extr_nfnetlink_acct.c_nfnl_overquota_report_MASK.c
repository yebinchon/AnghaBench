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
struct nf_acct {int dummy; } ;
struct net {int /*<<< orphan*/  nfnl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NFNLGRP_ACCT_QUOTA ; 
 int /*<<< orphan*/  NFNL_MSG_ACCT_OVERQUOTA ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nf_acct*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net *net, struct nf_acct *nfacct)
{
	int ret;
	struct sk_buff *skb;

	skb = FUNC3(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
	if (skb == NULL)
		return;

	ret = FUNC2(skb, 0, 0, NFNL_MSG_ACCT_OVERQUOTA, 0,
				  nfacct);
	if (ret <= 0) {
		FUNC0(skb);
		return;
	}
	FUNC1(net->nfnl, skb, 0, NFNLGRP_ACCT_QUOTA,
			  GFP_ATOMIC);
}