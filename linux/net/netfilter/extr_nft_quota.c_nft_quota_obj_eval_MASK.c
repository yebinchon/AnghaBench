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
struct TYPE_4__ {int /*<<< orphan*/  code; } ;
struct nft_regs {TYPE_2__ verdict; } ;
struct nft_quota {int /*<<< orphan*/  flags; } ;
struct nft_pktinfo {int /*<<< orphan*/  skb; } ;
struct TYPE_3__ {int /*<<< orphan*/  table; } ;
struct nft_object {TYPE_1__ key; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NFT_BREAK ; 
 int /*<<< orphan*/  NFT_MSG_NEWOBJ ; 
 int /*<<< orphan*/  NFT_QUOTA_DEPLETED_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct nft_pktinfo const*) ; 
 struct nft_quota* FUNC1 (struct nft_object*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nft_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nft_quota*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nft_pktinfo const*) ; 
 int FUNC5 (struct nft_quota*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct nft_object *obj,
			       struct nft_regs *regs,
			       const struct nft_pktinfo *pkt)
{
	struct nft_quota *priv = FUNC1(obj);
	bool overquota;

	overquota = FUNC3(priv, pkt->skb);
	if (overquota ^ FUNC5(priv))
		regs->verdict.code = NFT_BREAK;

	if (overquota &&
	    !FUNC6(NFT_QUOTA_DEPLETED_BIT, &priv->flags))
		FUNC2(FUNC0(pkt), obj->key.table, obj, 0, 0,
			       NFT_MSG_NEWOBJ, FUNC4(pkt), 0, GFP_ATOMIC);
}