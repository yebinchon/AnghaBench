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
struct nft_ctx {scalar_t__ family; struct nft_chain* chain; } ;
struct nft_chain {int dummy; } ;
struct nft_base_chain {TYPE_1__* type; } ;
typedef  enum nft_chain_types { ____Placeholder_nft_chain_types } nft_chain_types ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NFPROTO_BRIDGE ; 
 int NFT_CHAIN_T_DEFAULT ; 
 int NFT_CHAIN_T_NAT ; 
 struct nft_base_chain* FUNC0 (struct nft_chain const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nft_chain const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(const struct nft_ctx *ctx,
						const char *tablename)
{
	enum nft_chain_types type = NFT_CHAIN_T_DEFAULT;
	const struct nft_chain *chain = ctx->chain;
	const struct nft_base_chain *basechain;

	if (!tablename ||
	    !FUNC1(chain))
		return 0;

	basechain = FUNC0(chain);
	if (FUNC2(tablename, "nat") == 0) {
		if (ctx->family != NFPROTO_BRIDGE)
			type = NFT_CHAIN_T_NAT;
		if (basechain->type->type != type)
			return -EINVAL;
	}

	return 0;
}