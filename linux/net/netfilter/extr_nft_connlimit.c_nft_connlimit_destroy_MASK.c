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
struct nft_ctx {int dummy; } ;
struct nft_connlimit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nft_ctx const*,struct nft_connlimit*) ; 
 struct nft_connlimit* FUNC1 (struct nft_expr const*) ; 

__attribute__((used)) static void FUNC2(const struct nft_ctx *ctx,
				const struct nft_expr *expr)
{
	struct nft_connlimit *priv = FUNC1(expr);

	FUNC0(ctx, priv);
}