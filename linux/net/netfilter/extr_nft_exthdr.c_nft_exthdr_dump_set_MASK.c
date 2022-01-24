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
struct nft_exthdr {int /*<<< orphan*/  sreg; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_EXTHDR_SREG ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_exthdr* FUNC1 (struct nft_expr const*) ; 
 int FUNC2 (struct sk_buff*,struct nft_exthdr const*) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, const struct nft_expr *expr)
{
	const struct nft_exthdr *priv = FUNC1(expr);

	if (FUNC0(skb, NFTA_EXTHDR_SREG, priv->sreg))
		return -1;

	return FUNC2(skb, priv);
}