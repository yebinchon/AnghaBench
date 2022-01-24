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
struct nft_data {int /*<<< orphan*/ * data; } ;
struct nft_cmp_fast_expr {int len; int /*<<< orphan*/  data; int /*<<< orphan*/  sreg; } ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int /*<<< orphan*/  NFTA_CMP_DATA ; 
 int /*<<< orphan*/  NFTA_CMP_OP ; 
 int /*<<< orphan*/  NFTA_CMP_SREG ; 
 int /*<<< orphan*/  NFT_CMP_EQ ; 
 int /*<<< orphan*/  NFT_DATA_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,struct nft_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_cmp_fast_expr* FUNC3 (struct nft_expr const*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, const struct nft_expr *expr)
{
	const struct nft_cmp_fast_expr *priv = FUNC3(expr);
	struct nft_data data;

	if (FUNC2(skb, NFTA_CMP_SREG, priv->sreg))
		goto nla_put_failure;
	if (FUNC4(skb, NFTA_CMP_OP, FUNC0(NFT_CMP_EQ)))
		goto nla_put_failure;

	data.data[0] = priv->data;
	if (FUNC1(skb, NFTA_CMP_DATA, &data,
			  NFT_DATA_VALUE, priv->len / BITS_PER_BYTE) < 0)
		goto nla_put_failure;
	return 0;

nla_put_failure:
	return -1;
}