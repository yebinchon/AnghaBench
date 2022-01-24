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
struct nft_fib {int /*<<< orphan*/  flags; int /*<<< orphan*/  result; int /*<<< orphan*/  dreg; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_FIB_DREG ; 
 int /*<<< orphan*/  NFTA_FIB_FLAGS ; 
 int /*<<< orphan*/  NFTA_FIB_RESULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_fib* FUNC2 (struct nft_expr const*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct sk_buff *skb, const struct nft_expr *expr)
{
	const struct nft_fib *priv = FUNC2(expr);

	if (FUNC1(skb, NFTA_FIB_DREG, priv->dreg))
		return -1;

	if (FUNC3(skb, NFTA_FIB_RESULT, FUNC0(priv->result)))
		return -1;

	if (FUNC3(skb, NFTA_FIB_FLAGS, FUNC0(priv->flags)))
		return -1;

	return 0;
}