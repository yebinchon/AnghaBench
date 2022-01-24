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
struct nft_trans {int dummy; } ;
struct nft_ctx {int /*<<< orphan*/  chain; int /*<<< orphan*/  net; TYPE_1__* table; } ;
struct TYPE_2__ {int /*<<< orphan*/  use; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nft_trans*) ; 
 int /*<<< orphan*/  NFT_MSG_DELCHAIN ; 
 int FUNC1 (struct nft_trans*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_trans* FUNC3 (struct nft_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nft_ctx *ctx)
{
	struct nft_trans *trans;

	trans = FUNC3(ctx, NFT_MSG_DELCHAIN);
	if (FUNC0(trans))
		return FUNC1(trans);

	ctx->table->use--;
	FUNC2(ctx->net, ctx->chain);

	return 0;
}