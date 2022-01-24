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
struct nft_offload_ctx {int dummy; } ;
struct nft_flow_rule {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_cmp_expr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nft_offload_ctx*,struct nft_flow_rule*,struct nft_cmp_expr const*) ; 
 struct nft_cmp_expr* FUNC1 (struct nft_expr const*) ; 

__attribute__((used)) static int FUNC2(struct nft_offload_ctx *ctx,
			   struct nft_flow_rule *flow,
			   const struct nft_expr *expr)
{
	const struct nft_cmp_expr *priv = FUNC1(expr);

	return FUNC0(ctx, flow, priv);
}