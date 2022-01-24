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
typedef  int /*<<< orphan*/  u8 ;
struct nlattr {int dummy; } ;
struct nft_data_desc {int len; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int code; struct nft_chain* chain; } ;
struct nft_data {TYPE_1__ verdict; } ;
struct nft_ctx {int /*<<< orphan*/  table; int /*<<< orphan*/  net; } ;
struct nft_chain {int /*<<< orphan*/  use; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct nft_chain*) ; 
 size_t NFTA_VERDICT_CHAIN ; 
 size_t NFTA_VERDICT_CODE ; 
 int /*<<< orphan*/  NFTA_VERDICT_MAX ; 
#define  NFT_BREAK 135 
#define  NFT_CONTINUE 134 
 int /*<<< orphan*/  NFT_DATA_VERDICT ; 
#define  NFT_GOTO 133 
#define  NFT_JUMP 132 
#define  NFT_RETURN 131 
#define  NF_ACCEPT 130 
#define  NF_DROP 129 
#define  NF_QUEUE 128 
 int NF_VERDICT_MASK ; 
 int FUNC1 (struct nft_chain*) ; 
 struct nft_chain* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nft_chain*) ; 
 int /*<<< orphan*/  nft_verdict_policy ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 int FUNC6 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const struct nft_ctx *ctx, struct nft_data *data,
			    struct nft_data_desc *desc, const struct nlattr *nla)
{
	u8 genmask = FUNC3(ctx->net);
	struct nlattr *tb[NFTA_VERDICT_MAX + 1];
	struct nft_chain *chain;
	int err;

	err = FUNC6(tb, NFTA_VERDICT_MAX, nla,
					  nft_verdict_policy, NULL);
	if (err < 0)
		return err;

	if (!tb[NFTA_VERDICT_CODE])
		return -EINVAL;
	data->verdict.code = FUNC7(FUNC5(tb[NFTA_VERDICT_CODE]));

	switch (data->verdict.code) {
	default:
		switch (data->verdict.code & NF_VERDICT_MASK) {
		case NF_ACCEPT:
		case NF_DROP:
		case NF_QUEUE:
			break;
		default:
			return -EINVAL;
		}
		/* fall through */
	case NFT_CONTINUE:
	case NFT_BREAK:
	case NFT_RETURN:
		break;
	case NFT_JUMP:
	case NFT_GOTO:
		if (!tb[NFTA_VERDICT_CHAIN])
			return -EINVAL;
		chain = FUNC2(ctx->net, ctx->table,
					 tb[NFTA_VERDICT_CHAIN], genmask);
		if (FUNC0(chain))
			return FUNC1(chain);
		if (FUNC4(chain))
			return -EOPNOTSUPP;

		chain->use++;
		data->verdict.chain = chain;
		break;
	}

	desc->len = sizeof(data->verdict);
	desc->type = NFT_DATA_VERDICT;
	return 0;
}