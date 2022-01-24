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
typedef  int /*<<< orphan*/  u8 ;
struct nlattr {int dummy; } ;
struct nft_flowtable {int /*<<< orphan*/  use; } ;
struct nft_flow_offload {struct nft_flowtable* flowtable; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int /*<<< orphan*/  family; int /*<<< orphan*/  net; int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct nft_flowtable*) ; 
 size_t NFTA_FLOW_TABLE_NAME ; 
 int FUNC1 (struct nft_flowtable*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_flow_offload* FUNC3 (struct nft_expr const*) ; 
 struct nft_flowtable* FUNC4 (int /*<<< orphan*/ ,struct nlattr const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const struct nft_ctx *ctx,
				 const struct nft_expr *expr,
				 const struct nlattr * const tb[])
{
	struct nft_flow_offload *priv = FUNC3(expr);
	u8 genmask = FUNC5(ctx->net);
	struct nft_flowtable *flowtable;

	if (!tb[NFTA_FLOW_TABLE_NAME])
		return -EINVAL;

	flowtable = FUNC4(ctx->table, tb[NFTA_FLOW_TABLE_NAME],
					 genmask);
	if (FUNC0(flowtable))
		return FUNC1(flowtable);

	priv->flowtable = flowtable;
	flowtable->use++;

	return FUNC2(ctx->net, ctx->family);
}