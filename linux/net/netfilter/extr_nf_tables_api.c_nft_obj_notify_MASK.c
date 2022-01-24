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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nft_table {int dummy; } ;
struct nft_object {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOBUFS ; 
 int /*<<< orphan*/  NFNLGRP_NFTABLES ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,struct nft_table const*,struct nft_object*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct net *net, const struct nft_table *table,
		    struct nft_object *obj, u32 portid, u32 seq, int event,
		    int family, int report, gfp_t gfp)
{
	struct sk_buff *skb;
	int err;

	if (!report &&
	    !FUNC2(net, NFNLGRP_NFTABLES))
		return;

	skb = FUNC5(NLMSG_GOODSIZE, gfp);
	if (skb == NULL)
		goto err;

	err = FUNC1(skb, net, portid, seq, event, 0, family,
				      table, obj, false);
	if (err < 0) {
		FUNC0(skb);
		goto err;
	}

	FUNC3(skb, net, portid, NFNLGRP_NFTABLES, report, gfp);
	return;
err:
	FUNC4(net, portid, NFNLGRP_NFTABLES, -ENOBUFS);
}