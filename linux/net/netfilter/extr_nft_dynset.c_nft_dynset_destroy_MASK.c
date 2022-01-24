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
struct nft_dynset {int /*<<< orphan*/  set; int /*<<< orphan*/ * expr; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nft_ctx const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nft_ctx const*,int /*<<< orphan*/ *) ; 
 struct nft_dynset* FUNC2 (struct nft_expr const*) ; 

__attribute__((used)) static void FUNC3(const struct nft_ctx *ctx,
			       const struct nft_expr *expr)
{
	struct nft_dynset *priv = FUNC2(expr);

	if (priv->expr != NULL)
		FUNC1(ctx, priv->expr);

	FUNC0(ctx, priv->set);
}