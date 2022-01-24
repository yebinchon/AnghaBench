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
struct nft_xt_match_priv {int /*<<< orphan*/  info; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nft_ctx const*,struct nft_expr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nft_xt_match_priv* FUNC2 (struct nft_expr const*) ; 

__attribute__((used)) static void
FUNC3(const struct nft_ctx *ctx, const struct nft_expr *expr)
{
	struct nft_xt_match_priv *priv = FUNC2(expr);

	FUNC0(ctx, expr, priv->info);
	FUNC1(priv->info);
}