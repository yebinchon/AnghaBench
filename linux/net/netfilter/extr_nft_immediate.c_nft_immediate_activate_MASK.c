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
struct nft_immediate_expr {int /*<<< orphan*/  dreg; int /*<<< orphan*/  data; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 void FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nft_immediate_expr* FUNC2 (struct nft_expr const*) ; 

__attribute__((used)) static void FUNC3(const struct nft_ctx *ctx,
				   const struct nft_expr *expr)
{
	const struct nft_immediate_expr *priv = FUNC2(expr);

	return FUNC0(&priv->data, FUNC1(priv->dreg));
}