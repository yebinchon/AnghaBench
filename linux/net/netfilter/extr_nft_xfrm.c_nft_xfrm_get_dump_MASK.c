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
struct nft_xfrm {int /*<<< orphan*/  spnum; int /*<<< orphan*/  dir; int /*<<< orphan*/  key; int /*<<< orphan*/  dreg; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_XFRM_DIR ; 
 int /*<<< orphan*/  NFTA_XFRM_DREG ; 
 int /*<<< orphan*/  NFTA_XFRM_KEY ; 
 int /*<<< orphan*/  NFTA_XFRM_SPNUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_xfrm* FUNC2 (struct nft_expr const*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb,
			     const struct nft_expr *expr)
{
	const struct nft_xfrm *priv = FUNC2(expr);

	if (FUNC1(skb, NFTA_XFRM_DREG, priv->dreg))
		return -1;

	if (FUNC3(skb, NFTA_XFRM_KEY, FUNC0(priv->key)))
		return -1;
	if (FUNC4(skb, NFTA_XFRM_DIR, priv->dir))
		return -1;
	if (FUNC3(skb, NFTA_XFRM_SPNUM, FUNC0(priv->spnum)))
		return -1;

	return 0;
}