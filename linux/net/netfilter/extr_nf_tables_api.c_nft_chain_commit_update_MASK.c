#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* chain; TYPE_1__* table; } ;
struct nft_trans {TYPE_2__ ctx; } ;
struct nft_base_chain {int policy; } ;
struct TYPE_7__ {int /*<<< orphan*/  rhlhead; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  chains_ht; } ;

/* Variables and functions */
#define  NF_ACCEPT 129 
#define  NF_DROP 128 
 struct nft_base_chain* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  nft_chain_ht_params ; 
 int /*<<< orphan*/  FUNC1 (struct nft_trans*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (struct nft_trans*) ; 
 int FUNC4 (struct nft_trans*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct nft_trans *trans)
{
	struct nft_base_chain *basechain;

	if (FUNC3(trans)) {
		FUNC6(&trans->ctx.table->chains_ht,
				&trans->ctx.chain->rhlhead,
				nft_chain_ht_params);
		FUNC7(trans->ctx.chain->name, FUNC3(trans));
		FUNC5(&trans->ctx.table->chains_ht,
				    trans->ctx.chain->name,
				    &trans->ctx.chain->rhlhead,
				    nft_chain_ht_params);
	}

	if (!FUNC2(trans->ctx.chain))
		return;

	FUNC1(trans);

	basechain = FUNC0(trans->ctx.chain);

	switch (FUNC4(trans)) {
	case NF_DROP:
	case NF_ACCEPT:
		basechain->policy = FUNC4(trans);
		break;
	}
}