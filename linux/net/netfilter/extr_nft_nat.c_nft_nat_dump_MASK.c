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
struct nft_nat {int type; scalar_t__ family; scalar_t__ flags; scalar_t__ sreg_proto_max; scalar_t__ sreg_proto_min; scalar_t__ sreg_addr_max; scalar_t__ sreg_addr_min; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_NAT_FAMILY ; 
 int /*<<< orphan*/  NFTA_NAT_FLAGS ; 
 int /*<<< orphan*/  NFTA_NAT_REG_ADDR_MAX ; 
 int /*<<< orphan*/  NFTA_NAT_REG_ADDR_MIN ; 
 int /*<<< orphan*/  NFTA_NAT_REG_PROTO_MAX ; 
 int /*<<< orphan*/  NFTA_NAT_REG_PROTO_MIN ; 
 int /*<<< orphan*/  NFTA_NAT_TYPE ; 
 scalar_t__ NFT_NAT_DNAT ; 
 scalar_t__ NFT_NAT_SNAT ; 
#define  NF_NAT_MANIP_DST 129 
#define  NF_NAT_MANIP_SRC 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct nft_nat* FUNC2 (struct nft_expr const*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, const struct nft_expr *expr)
{
	const struct nft_nat *priv = FUNC2(expr);

	switch (priv->type) {
	case NF_NAT_MANIP_SRC:
		if (FUNC3(skb, NFTA_NAT_TYPE, FUNC0(NFT_NAT_SNAT)))
			goto nla_put_failure;
		break;
	case NF_NAT_MANIP_DST:
		if (FUNC3(skb, NFTA_NAT_TYPE, FUNC0(NFT_NAT_DNAT)))
			goto nla_put_failure;
		break;
	}

	if (FUNC3(skb, NFTA_NAT_FAMILY, FUNC0(priv->family)))
		goto nla_put_failure;

	if (priv->sreg_addr_min) {
		if (FUNC1(skb, NFTA_NAT_REG_ADDR_MIN,
				      priv->sreg_addr_min) ||
		    FUNC1(skb, NFTA_NAT_REG_ADDR_MAX,
				      priv->sreg_addr_max))
			goto nla_put_failure;
	}

	if (priv->sreg_proto_min) {
		if (FUNC1(skb, NFTA_NAT_REG_PROTO_MIN,
				      priv->sreg_proto_min) ||
		    FUNC1(skb, NFTA_NAT_REG_PROTO_MAX,
				      priv->sreg_proto_max))
			goto nla_put_failure;
	}

	if (priv->flags != 0) {
		if (FUNC3(skb, NFTA_NAT_FLAGS, FUNC0(priv->flags)))
			goto nla_put_failure;
	}

	return 0;

nla_put_failure:
	return -1;
}