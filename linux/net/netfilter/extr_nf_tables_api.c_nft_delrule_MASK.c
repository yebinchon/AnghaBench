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
struct nft_trans {int dummy; } ;
struct nft_rule {int dummy; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NFT_MSG_DELRULE ; 
 int /*<<< orphan*/  NFT_TRANS_PREPARE ; 
 int FUNC0 (struct nft_ctx*,struct nft_rule*) ; 
 int /*<<< orphan*/  FUNC1 (struct nft_ctx*,struct nft_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nft_trans*) ; 
 struct nft_trans* FUNC3 (struct nft_ctx*,int /*<<< orphan*/ ,struct nft_rule*) ; 

__attribute__((used)) static int FUNC4(struct nft_ctx *ctx, struct nft_rule *rule)
{
	struct nft_trans *trans;
	int err;

	trans = FUNC3(ctx, NFT_MSG_DELRULE, rule);
	if (trans == NULL)
		return -ENOMEM;

	err = FUNC0(ctx, rule);
	if (err < 0) {
		FUNC2(trans);
		return err;
	}
	FUNC1(ctx, rule, NFT_TRANS_PREPARE);

	return 0;
}