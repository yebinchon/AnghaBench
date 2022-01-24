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
struct nft_expr {int dummy; } ;
struct nft_ctx {int /*<<< orphan*/  family; int /*<<< orphan*/  net; } ;
struct nft_ct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nft_ctx const*,struct nft_ct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_ct* FUNC2 (struct nft_expr const*) ; 

__attribute__((used)) static void FUNC3(const struct nft_ctx *ctx,
			       const struct nft_expr *expr)
{
	struct nft_ct *priv = FUNC2(expr);

	FUNC0(ctx, priv);
	FUNC1(ctx->net, ctx->family);
}