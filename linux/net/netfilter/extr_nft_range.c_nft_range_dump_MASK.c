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
struct nft_range_expr {int /*<<< orphan*/  len; int /*<<< orphan*/  data_to; int /*<<< orphan*/  data_from; int /*<<< orphan*/  op; int /*<<< orphan*/  sreg; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_RANGE_FROM_DATA ; 
 int /*<<< orphan*/  NFTA_RANGE_OP ; 
 int /*<<< orphan*/  NFTA_RANGE_SREG ; 
 int /*<<< orphan*/  NFTA_RANGE_TO_DATA ; 
 int /*<<< orphan*/  NFT_DATA_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_range_expr* FUNC3 (struct nft_expr const*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, const struct nft_expr *expr)
{
	const struct nft_range_expr *priv = FUNC3(expr);

	if (FUNC2(skb, NFTA_RANGE_SREG, priv->sreg))
		goto nla_put_failure;
	if (FUNC4(skb, NFTA_RANGE_OP, FUNC0(priv->op)))
		goto nla_put_failure;

	if (FUNC1(skb, NFTA_RANGE_FROM_DATA, &priv->data_from,
			  NFT_DATA_VALUE, priv->len) < 0 ||
	    FUNC1(skb, NFTA_RANGE_TO_DATA, &priv->data_to,
			  NFT_DATA_VALUE, priv->len) < 0)
		goto nla_put_failure;
	return 0;

nla_put_failure:
	return -1;
}