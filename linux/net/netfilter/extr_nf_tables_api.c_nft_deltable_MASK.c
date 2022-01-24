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
struct nft_ctx {int /*<<< orphan*/  table; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFT_MSG_DELTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nft_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct nft_ctx *ctx)
{
	int err;

	err = FUNC1(ctx, NFT_MSG_DELTABLE);
	if (err < 0)
		return err;

	FUNC0(ctx->net, ctx->table);
	return err;
}