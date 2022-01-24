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
struct nft_table {int flags; } ;
struct nft_chain {int dummy; } ;
struct nf_hook_ops {int dummy; } ;
struct nft_base_chain {TYPE_1__* type; struct nf_hook_ops ops; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int (* ops_register ) (struct net*,struct nf_hook_ops const*) ;} ;

/* Variables and functions */
 int NFT_TABLE_F_DORMANT ; 
 int FUNC0 (struct net*,struct nf_hook_ops const*) ; 
 struct nft_base_chain* FUNC1 (struct nft_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct nft_chain*) ; 
 int FUNC3 (struct net*,struct nf_hook_ops const*) ; 

__attribute__((used)) static int FUNC4(struct net *net,
				   const struct nft_table *table,
				   struct nft_chain *chain)
{
	const struct nft_base_chain *basechain;
	const struct nf_hook_ops *ops;

	if (table->flags & NFT_TABLE_F_DORMANT ||
	    !FUNC2(chain))
		return 0;

	basechain = FUNC1(chain);
	ops = &basechain->ops;

	if (basechain->type->ops_register)
		return basechain->type->ops_register(net, ops);

	return FUNC0(net, ops);
}