#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nft_rule {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  l3num; int /*<<< orphan*/  type; } ;
struct nft_offload_ctx {TYPE_2__ dep; struct net* net; } ;
struct nft_flow_rule {int /*<<< orphan*/  proto; } ;
struct nft_expr {TYPE_1__* ops; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int offload_flags; int (* offload ) (struct nft_offload_ctx*,struct nft_flow_rule*,struct nft_expr*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct nft_flow_rule* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFT_OFFLOAD_DEP_UNSPEC ; 
 int NFT_OFFLOAD_F_ACTION ; 
 int /*<<< orphan*/  FUNC1 (struct nft_offload_ctx*) ; 
 struct nft_offload_ctx* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct nft_expr* FUNC3 (struct nft_rule const*) ; 
 struct nft_expr* FUNC4 (struct nft_rule const*) ; 
 struct nft_expr* FUNC5 (struct nft_expr*) ; 
 struct nft_flow_rule* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct nft_flow_rule*) ; 
 int FUNC8 (struct nft_offload_ctx*,struct nft_flow_rule*,struct nft_expr*) ; 

struct nft_flow_rule *FUNC9(struct net *net,
					   const struct nft_rule *rule)
{
	struct nft_offload_ctx *ctx;
	struct nft_flow_rule *flow;
	int num_actions = 0, err;
	struct nft_expr *expr;

	expr = FUNC3(rule);
	while (expr->ops && expr != FUNC4(rule)) {
		if (expr->ops->offload_flags & NFT_OFFLOAD_F_ACTION)
			num_actions++;

		expr = FUNC5(expr);
	}

	flow = FUNC6(num_actions);
	if (!flow)
		return FUNC0(-ENOMEM);

	expr = FUNC3(rule);

	ctx = FUNC2(sizeof(struct nft_offload_ctx), GFP_KERNEL);
	if (!ctx) {
		err = -ENOMEM;
		goto err_out;
	}
	ctx->net = net;
	ctx->dep.type = NFT_OFFLOAD_DEP_UNSPEC;

	while (expr->ops && expr != FUNC4(rule)) {
		if (!expr->ops->offload) {
			err = -EOPNOTSUPP;
			goto err_out;
		}
		err = expr->ops->offload(ctx, flow, expr);
		if (err < 0)
			goto err_out;

		expr = FUNC5(expr);
	}
	flow->proto = ctx->dep.l3num;
	FUNC1(ctx);

	return flow;
err_out:
	FUNC1(ctx);
	FUNC7(flow);

	return FUNC0(err);
}