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
struct nft_flow_offload {TYPE_1__* flowtable; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int /*<<< orphan*/  family; int /*<<< orphan*/  net; } ;
struct TYPE_2__ {int /*<<< orphan*/  use; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_flow_offload* FUNC1 (struct nft_expr const*) ; 

__attribute__((used)) static void FUNC2(const struct nft_ctx *ctx,
				     const struct nft_expr *expr)
{
	struct nft_flow_offload *priv = FUNC1(expr);

	priv->flowtable->use--;
	FUNC0(ctx->net, ctx->family);
}