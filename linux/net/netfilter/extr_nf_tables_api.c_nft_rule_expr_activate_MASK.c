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
struct nft_rule {int dummy; } ;
struct nft_expr {TYPE_1__* ops; } ;
struct nft_ctx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* activate ) (struct nft_ctx const*,struct nft_expr*) ;} ;

/* Variables and functions */
 struct nft_expr* FUNC0 (struct nft_rule*) ; 
 struct nft_expr* FUNC1 (struct nft_rule*) ; 
 struct nft_expr* FUNC2 (struct nft_expr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nft_ctx const*,struct nft_expr*) ; 

__attribute__((used)) static void FUNC4(const struct nft_ctx *ctx,
				   struct nft_rule *rule)
{
	struct nft_expr *expr;

	expr = FUNC0(rule);
	while (expr != FUNC1(rule) && expr->ops) {
		if (expr->ops->activate)
			expr->ops->activate(ctx, expr);

		expr = FUNC2(expr);
	}
}