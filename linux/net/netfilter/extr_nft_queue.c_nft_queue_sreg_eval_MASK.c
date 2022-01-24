#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  code; } ;
struct nft_regs {TYPE_1__ verdict; int /*<<< orphan*/ * data; } ;
struct nft_queue {size_t sreg_qnum; int flags; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int NFT_QUEUE_FLAG_BYPASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_VERDICT_FLAG_QUEUE_BYPASS ; 
 struct nft_queue* FUNC1 (struct nft_expr const*) ; 

__attribute__((used)) static void FUNC2(const struct nft_expr *expr,
				struct nft_regs *regs,
				const struct nft_pktinfo *pkt)
{
	struct nft_queue *priv = FUNC1(expr);
	u32 queue, ret;

	queue = regs->data[priv->sreg_qnum];

	ret = FUNC0(queue);
	if (priv->flags & NFT_QUEUE_FLAG_BYPASS)
		ret |= NF_VERDICT_FLAG_QUEUE_BYPASS;

	regs->verdict.code = ret;
}