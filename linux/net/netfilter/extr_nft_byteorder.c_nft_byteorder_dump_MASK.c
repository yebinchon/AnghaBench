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
struct nft_byteorder {int /*<<< orphan*/  size; int /*<<< orphan*/  len; int /*<<< orphan*/  op; int /*<<< orphan*/  dreg; int /*<<< orphan*/  sreg; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_BYTEORDER_DREG ; 
 int /*<<< orphan*/  NFTA_BYTEORDER_LEN ; 
 int /*<<< orphan*/  NFTA_BYTEORDER_OP ; 
 int /*<<< orphan*/  NFTA_BYTEORDER_SIZE ; 
 int /*<<< orphan*/  NFTA_BYTEORDER_SREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_byteorder* FUNC2 (struct nft_expr const*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, const struct nft_expr *expr)
{
	const struct nft_byteorder *priv = FUNC2(expr);

	if (FUNC1(skb, NFTA_BYTEORDER_SREG, priv->sreg))
		goto nla_put_failure;
	if (FUNC1(skb, NFTA_BYTEORDER_DREG, priv->dreg))
		goto nla_put_failure;
	if (FUNC3(skb, NFTA_BYTEORDER_OP, FUNC0(priv->op)))
		goto nla_put_failure;
	if (FUNC3(skb, NFTA_BYTEORDER_LEN, FUNC0(priv->len)))
		goto nla_put_failure;
	if (FUNC3(skb, NFTA_BYTEORDER_SIZE, FUNC0(priv->size)))
		goto nla_put_failure;
	return 0;

nla_put_failure:
	return -1;
}