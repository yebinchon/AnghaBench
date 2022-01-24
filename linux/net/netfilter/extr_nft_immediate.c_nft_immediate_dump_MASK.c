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
struct nft_immediate_expr {int /*<<< orphan*/  dlen; int /*<<< orphan*/  dreg; int /*<<< orphan*/  data; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_IMMEDIATE_DATA ; 
 int /*<<< orphan*/  NFTA_IMMEDIATE_DREG ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_immediate_expr* FUNC3 (struct nft_expr const*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, const struct nft_expr *expr)
{
	const struct nft_immediate_expr *priv = FUNC3(expr);

	if (FUNC2(skb, NFTA_IMMEDIATE_DREG, priv->dreg))
		goto nla_put_failure;

	return FUNC0(skb, NFTA_IMMEDIATE_DATA, &priv->data,
			     FUNC1(priv->dreg), priv->dlen);

nla_put_failure:
	return -1;
}