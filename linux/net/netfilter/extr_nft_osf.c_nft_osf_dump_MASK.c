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
struct nft_osf {int /*<<< orphan*/  dreg; int /*<<< orphan*/  flags; int /*<<< orphan*/  ttl; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_OSF_DREG ; 
 int /*<<< orphan*/  NFTA_OSF_FLAGS ; 
 int /*<<< orphan*/  NFTA_OSF_TTL ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_osf* FUNC1 (struct nft_expr const*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, const struct nft_expr *expr)
{
	const struct nft_osf *priv = FUNC1(expr);

	if (FUNC3(skb, NFTA_OSF_TTL, priv->ttl))
		goto nla_put_failure;

	if (FUNC2(skb, NFTA_OSF_FLAGS, FUNC4(priv->flags)))
		goto nla_put_failure;

	if (FUNC0(skb, NFTA_OSF_DREG, priv->dreg))
		goto nla_put_failure;

	return 0;

nla_put_failure:
	return -1;
}