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
struct TYPE_2__ {int /*<<< orphan*/  chain; } ;
struct nft_trans {TYPE_1__ ctx; } ;
struct nft_base_chain {scalar_t__ policy; } ;

/* Variables and functions */
 scalar_t__ NF_DROP ; 
 struct nft_base_chain* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nft_trans*) ; 

__attribute__((used)) static void FUNC3(struct nft_trans *trans)
{
	struct nft_base_chain *basechain;

	if (FUNC2(trans) != NF_DROP)
		return;

	if (!FUNC1(trans->ctx.chain))
		return;

	basechain = FUNC0(trans->ctx.chain);
	basechain->policy = NF_DROP;
}