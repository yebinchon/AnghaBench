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
struct nft_objref_map {int /*<<< orphan*/  binding; int /*<<< orphan*/  set; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;
typedef  enum nft_trans_phase { ____Placeholder_nft_trans_phase } nft_trans_phase ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nft_ctx const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct nft_objref_map* FUNC1 (struct nft_expr const*) ; 

__attribute__((used)) static void FUNC2(const struct nft_ctx *ctx,
				      const struct nft_expr *expr,
				      enum nft_trans_phase phase)
{
	struct nft_objref_map *priv = FUNC1(expr);

	FUNC0(ctx, priv->set, &priv->binding, phase);
}