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
struct nft_meta {int /*<<< orphan*/  sreg; int /*<<< orphan*/  key; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_META_KEY ; 
 int /*<<< orphan*/  NFTA_META_SREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_meta* FUNC2 (struct nft_expr const*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct sk_buff *skb, const struct nft_expr *expr)
{
	const struct nft_meta *priv = FUNC2(expr);

	if (FUNC3(skb, NFTA_META_KEY, FUNC0(priv->key)))
		goto nla_put_failure;
	if (FUNC1(skb, NFTA_META_SREG, priv->sreg))
		goto nla_put_failure;

	return 0;

nla_put_failure:
	return -1;
}