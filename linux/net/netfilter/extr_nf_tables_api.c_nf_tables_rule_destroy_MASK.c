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
struct nft_rule {int dummy; } ;
struct nft_expr {scalar_t__ ops; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nft_rule*) ; 
 int /*<<< orphan*/  FUNC1 (struct nft_ctx const*,struct nft_expr*) ; 
 struct nft_expr* FUNC2 (struct nft_rule*) ; 
 struct nft_expr* FUNC3 (struct nft_rule*) ; 
 struct nft_expr* FUNC4 (struct nft_expr*) ; 

__attribute__((used)) static void FUNC5(const struct nft_ctx *ctx,
				   struct nft_rule *rule)
{
	struct nft_expr *expr, *next;

	/*
	 * Careful: some expressions might not be initialized in case this
	 * is called on error from nf_tables_newrule().
	 */
	expr = FUNC2(rule);
	while (expr != FUNC3(rule) && expr->ops) {
		next = FUNC4(expr);
		FUNC1(ctx, expr);
		expr = next;
	}
	FUNC0(rule);
}