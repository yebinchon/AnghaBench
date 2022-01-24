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
struct nft_reject {int type; int /*<<< orphan*/  icmp_code; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_REJECT_ICMP_CODE ; 
 int /*<<< orphan*/  NFTA_REJECT_TYPE ; 
#define  NFT_REJECT_ICMPX_UNREACH 129 
#define  NFT_REJECT_ICMP_UNREACH 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct nft_reject* FUNC1 (struct nft_expr const*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb,
				  const struct nft_expr *expr)
{
	const struct nft_reject *priv = FUNC1(expr);

	if (FUNC2(skb, NFTA_REJECT_TYPE, FUNC0(priv->type)))
		goto nla_put_failure;

	switch (priv->type) {
	case NFT_REJECT_ICMP_UNREACH:
	case NFT_REJECT_ICMPX_UNREACH:
		if (FUNC3(skb, NFTA_REJECT_ICMP_CODE, priv->icmp_code))
			goto nla_put_failure;
		break;
	default:
		break;
	}

	return 0;

nla_put_failure:
	return -1;
}