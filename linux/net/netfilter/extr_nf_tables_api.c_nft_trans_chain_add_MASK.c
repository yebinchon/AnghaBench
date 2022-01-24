#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nft_trans_chain {int dummy; } ;
struct nft_trans {int /*<<< orphan*/  list; } ;
struct nft_ctx {TYPE_2__* net; int /*<<< orphan*/  chain; } ;
struct TYPE_3__ {int /*<<< orphan*/  commit_list; } ;
struct TYPE_4__ {TYPE_1__ nft; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct nft_trans* FUNC0 (int /*<<< orphan*/ ) ; 
 int NFT_MSG_NEWCHAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct nft_trans* FUNC3 (struct nft_ctx*,int,int) ; 

__attribute__((used)) static struct nft_trans *FUNC4(struct nft_ctx *ctx, int msg_type)
{
	struct nft_trans *trans;

	trans = FUNC3(ctx, msg_type, sizeof(struct nft_trans_chain));
	if (trans == NULL)
		return FUNC0(-ENOMEM);

	if (msg_type == NFT_MSG_NEWCHAIN)
		FUNC2(ctx->net, ctx->chain);

	FUNC1(&trans->list, &ctx->net->nft.commit_list);
	return trans;
}