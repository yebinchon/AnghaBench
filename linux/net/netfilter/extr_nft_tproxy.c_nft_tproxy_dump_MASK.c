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
struct nft_tproxy {scalar_t__ sreg_port; scalar_t__ sreg_addr; int /*<<< orphan*/  family; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_TPROXY_FAMILY ; 
 int /*<<< orphan*/  NFTA_TPROXY_REG_ADDR ; 
 int /*<<< orphan*/  NFTA_TPROXY_REG_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct nft_tproxy* FUNC2 (struct nft_expr const*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb,
			   const struct nft_expr *expr)
{
	const struct nft_tproxy *priv = FUNC2(expr);

	if (FUNC3(skb, NFTA_TPROXY_FAMILY, FUNC0(priv->family)))
		return -1;

	if (priv->sreg_addr &&
	    FUNC1(skb, NFTA_TPROXY_REG_ADDR, priv->sreg_addr))
		return -1;

	if (priv->sreg_port &&
	    FUNC1(skb, NFTA_TPROXY_REG_PORT, priv->sreg_port))
			return -1;

	return 0;
}