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
struct nft_chain {int dummy; } ;
struct nft_base_chain {TYPE_1__* type; } ;
typedef  enum nft_chain_types { ____Placeholder_nft_chain_types } nft_chain_types ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct nft_base_chain* FUNC0 (struct nft_chain const*) ; 
 scalar_t__ FUNC1 (struct nft_chain const*) ; 

int FUNC2(const struct nft_chain *chain,
				  enum nft_chain_types type)
{
	const struct nft_base_chain *basechain;

	if (FUNC1(chain)) {
		basechain = FUNC0(chain);
		if (basechain->type->type != type)
			return -EOPNOTSUPP;
	}
	return 0;
}