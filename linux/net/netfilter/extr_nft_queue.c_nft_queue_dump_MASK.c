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
struct nft_queue {int /*<<< orphan*/  flags; int /*<<< orphan*/  queues_total; int /*<<< orphan*/  queuenum; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_QUEUE_FLAGS ; 
 int /*<<< orphan*/  NFTA_QUEUE_NUM ; 
 int /*<<< orphan*/  NFTA_QUEUE_TOTAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct nft_queue* FUNC1 (struct nft_expr const*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, const struct nft_expr *expr)
{
	const struct nft_queue *priv = FUNC1(expr);

	if (FUNC2(skb, NFTA_QUEUE_NUM, FUNC0(priv->queuenum)) ||
	    FUNC2(skb, NFTA_QUEUE_TOTAL, FUNC0(priv->queues_total)) ||
	    FUNC2(skb, NFTA_QUEUE_FLAGS, FUNC0(priv->flags)))
		goto nla_put_failure;

	return 0;

nla_put_failure:
	return -1;
}