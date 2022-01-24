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
struct nft_payload {int base; } ;
struct nft_offload_ctx {int dummy; } ;
struct nft_flow_rule {int dummy; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  NFT_PAYLOAD_LL_HEADER 130 
#define  NFT_PAYLOAD_NETWORK_HEADER 129 
#define  NFT_PAYLOAD_TRANSPORT_HEADER 128 
 struct nft_payload* FUNC0 (struct nft_expr const*) ; 
 int FUNC1 (struct nft_offload_ctx*,struct nft_flow_rule*,struct nft_payload const*) ; 
 int FUNC2 (struct nft_offload_ctx*,struct nft_flow_rule*,struct nft_payload const*) ; 
 int FUNC3 (struct nft_offload_ctx*,struct nft_flow_rule*,struct nft_payload const*) ; 

__attribute__((used)) static int FUNC4(struct nft_offload_ctx *ctx,
			       struct nft_flow_rule *flow,
			       const struct nft_expr *expr)
{
	const struct nft_payload *priv = FUNC0(expr);
	int err;

	switch (priv->base) {
	case NFT_PAYLOAD_LL_HEADER:
		err = FUNC1(ctx, flow, priv);
		break;
	case NFT_PAYLOAD_NETWORK_HEADER:
		err = FUNC2(ctx, flow, priv);
		break;
	case NFT_PAYLOAD_TRANSPORT_HEADER:
		err = FUNC3(ctx, flow, priv);
		break;
	default:
		err = -EOPNOTSUPP;
		break;
	}
	return err;
}