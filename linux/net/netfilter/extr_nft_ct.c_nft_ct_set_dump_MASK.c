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
struct nft_expr {int dummy; } ;
struct nft_ct {int key; int /*<<< orphan*/  dir; int /*<<< orphan*/  sreg; } ;

/* Variables and functions */
 int /*<<< orphan*/  IP_CT_DIR_MAX ; 
 int /*<<< orphan*/  NFTA_CT_DIRECTION ; 
 int /*<<< orphan*/  NFTA_CT_KEY ; 
 int /*<<< orphan*/  NFTA_CT_SREG ; 
#define  NFT_CT_ZONE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_ct* FUNC2 (struct nft_expr const*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, const struct nft_expr *expr)
{
	const struct nft_ct *priv = FUNC2(expr);

	if (FUNC1(skb, NFTA_CT_SREG, priv->sreg))
		goto nla_put_failure;
	if (FUNC3(skb, NFTA_CT_KEY, FUNC0(priv->key)))
		goto nla_put_failure;

	switch (priv->key) {
	case NFT_CT_ZONE:
		if (priv->dir < IP_CT_DIR_MAX &&
		    FUNC4(skb, NFTA_CT_DIRECTION, priv->dir))
			goto nla_put_failure;
		break;
	default:
		break;
	}

	return 0;

nla_put_failure:
	return -1;
}