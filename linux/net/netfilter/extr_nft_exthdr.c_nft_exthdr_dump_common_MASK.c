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
struct nft_exthdr {int /*<<< orphan*/  op; int /*<<< orphan*/  flags; int /*<<< orphan*/  len; int /*<<< orphan*/  offset; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_EXTHDR_FLAGS ; 
 int /*<<< orphan*/  NFTA_EXTHDR_LEN ; 
 int /*<<< orphan*/  NFTA_EXTHDR_OFFSET ; 
 int /*<<< orphan*/  NFTA_EXTHDR_OP ; 
 int /*<<< orphan*/  NFTA_EXTHDR_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, const struct nft_exthdr *priv)
{
	if (FUNC2(skb, NFTA_EXTHDR_TYPE, priv->type))
		goto nla_put_failure;
	if (FUNC1(skb, NFTA_EXTHDR_OFFSET, FUNC0(priv->offset)))
		goto nla_put_failure;
	if (FUNC1(skb, NFTA_EXTHDR_LEN, FUNC0(priv->len)))
		goto nla_put_failure;
	if (FUNC1(skb, NFTA_EXTHDR_FLAGS, FUNC0(priv->flags)))
		goto nla_put_failure;
	if (FUNC1(skb, NFTA_EXTHDR_OP, FUNC0(priv->op)))
		goto nla_put_failure;
	return 0;

nla_put_failure:
	return -1;
}