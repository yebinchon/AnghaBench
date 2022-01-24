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
struct nft_offload_reg {int dummy; } ;
struct nft_offload_ctx {struct nft_offload_reg* regs; } ;
struct nft_meta {size_t dreg; int key; } ;
struct nft_flow_rule {int dummy; } ;
struct nft_expr {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_BASIC ; 
#define  NFT_META_L4PROTO 129 
#define  NFT_META_PROTOCOL 128 
 int /*<<< orphan*/  NFT_OFFLOAD_DEP_NETWORK ; 
 int /*<<< orphan*/  NFT_OFFLOAD_DEP_TRANSPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nft_offload_reg*) ; 
 int /*<<< orphan*/  basic ; 
 int /*<<< orphan*/  ip_proto ; 
 int /*<<< orphan*/  n_proto ; 
 struct nft_meta* FUNC1 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct nft_offload_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nft_offload_ctx *ctx,
				struct nft_flow_rule *flow,
				const struct nft_expr *expr)
{
	const struct nft_meta *priv = FUNC1(expr);
	struct nft_offload_reg *reg = &ctx->regs[priv->dreg];

	switch (priv->key) {
	case NFT_META_PROTOCOL:
		FUNC0(FLOW_DISSECTOR_KEY_BASIC, basic, n_proto,
				  sizeof(__u16), reg);
		FUNC2(ctx, NFT_OFFLOAD_DEP_NETWORK);
		break;
	case NFT_META_L4PROTO:
		FUNC0(FLOW_DISSECTOR_KEY_BASIC, basic, ip_proto,
				  sizeof(__u8), reg);
		FUNC2(ctx, NFT_OFFLOAD_DEP_TRANSPORT);
		break;
	default:
		return -EOPNOTSUPP;
	}

	return 0;
}