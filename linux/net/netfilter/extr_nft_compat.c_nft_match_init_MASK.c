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
struct nlattr {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nft_ctx const*,struct nft_expr const*,struct nlattr const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nft_expr const*) ; 

__attribute__((used)) static int
FUNC2(const struct nft_ctx *ctx, const struct nft_expr *expr,
	       const struct nlattr * const tb[])
{
	return FUNC0(ctx, expr, tb, FUNC1(expr));
}