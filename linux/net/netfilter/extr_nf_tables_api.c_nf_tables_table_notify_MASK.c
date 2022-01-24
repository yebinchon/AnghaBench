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
struct nft_ctx {int /*<<< orphan*/  portid; int /*<<< orphan*/  net; int /*<<< orphan*/  report; int /*<<< orphan*/  table; int /*<<< orphan*/  family; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFNLGRP_NFTABLES ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const struct nft_ctx *ctx, int event)
{
	struct sk_buff *skb;
	int err;

	if (!ctx->report &&
	    !FUNC2(ctx->net, NFNLGRP_NFTABLES))
		return;

	skb = FUNC5(NLMSG_GOODSIZE, GFP_KERNEL);
	if (skb == NULL)
		goto err;

	err = FUNC1(skb, ctx->net, ctx->portid, ctx->seq,
					event, 0, ctx->family, ctx->table);
	if (err < 0) {
		FUNC0(skb);
		goto err;
	}

	FUNC3(skb, ctx->net, ctx->portid, NFNLGRP_NFTABLES,
		       ctx->report, GFP_KERNEL);
	return;
err:
	FUNC4(ctx->net, ctx->portid, NFNLGRP_NFTABLES, -ENOBUFS);
}