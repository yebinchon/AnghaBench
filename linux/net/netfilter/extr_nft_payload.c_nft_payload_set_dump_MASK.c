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
struct nft_payload_set {int /*<<< orphan*/  csum_flags; int /*<<< orphan*/  csum_offset; int /*<<< orphan*/  csum_type; int /*<<< orphan*/  len; int /*<<< orphan*/  offset; int /*<<< orphan*/  base; int /*<<< orphan*/  sreg; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_PAYLOAD_BASE ; 
 int /*<<< orphan*/  NFTA_PAYLOAD_CSUM_FLAGS ; 
 int /*<<< orphan*/  NFTA_PAYLOAD_CSUM_OFFSET ; 
 int /*<<< orphan*/  NFTA_PAYLOAD_CSUM_TYPE ; 
 int /*<<< orphan*/  NFTA_PAYLOAD_LEN ; 
 int /*<<< orphan*/  NFTA_PAYLOAD_OFFSET ; 
 int /*<<< orphan*/  NFTA_PAYLOAD_SREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_payload_set* FUNC2 (struct nft_expr const*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, const struct nft_expr *expr)
{
	const struct nft_payload_set *priv = FUNC2(expr);

	if (FUNC1(skb, NFTA_PAYLOAD_SREG, priv->sreg) ||
	    FUNC3(skb, NFTA_PAYLOAD_BASE, FUNC0(priv->base)) ||
	    FUNC3(skb, NFTA_PAYLOAD_OFFSET, FUNC0(priv->offset)) ||
	    FUNC3(skb, NFTA_PAYLOAD_LEN, FUNC0(priv->len)) ||
	    FUNC3(skb, NFTA_PAYLOAD_CSUM_TYPE, FUNC0(priv->csum_type)) ||
	    FUNC3(skb, NFTA_PAYLOAD_CSUM_OFFSET,
			 FUNC0(priv->csum_offset)) ||
	    FUNC3(skb, NFTA_PAYLOAD_CSUM_FLAGS, FUNC0(priv->csum_flags)))
		goto nla_put_failure;
	return 0;

nla_put_failure:
	return -1;
}