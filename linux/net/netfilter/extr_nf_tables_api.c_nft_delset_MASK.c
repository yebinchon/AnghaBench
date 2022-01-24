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
struct nft_set {int dummy; } ;
struct nft_ctx {TYPE_1__* table; int /*<<< orphan*/  net; } ;
struct TYPE_2__ {int /*<<< orphan*/  use; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFT_MSG_DELSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nft_set*) ; 
 int FUNC1 (struct nft_ctx const*,int /*<<< orphan*/ ,struct nft_set*) ; 

__attribute__((used)) static int FUNC2(const struct nft_ctx *ctx, struct nft_set *set)
{
	int err;

	err = FUNC1(ctx, NFT_MSG_DELSET, set);
	if (err < 0)
		return err;

	FUNC0(ctx->net, set);
	ctx->table->use--;

	return err;
}