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
struct nft_chain_type {size_t family; size_t type; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFNL_SUBSYS_NFTABLES ; 
 size_t NFPROTO_NUMPROTO ; 
 scalar_t__ FUNC0 (int) ; 
 struct nft_chain_type const*** chain_type ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(const struct nft_chain_type *ctype)
{
	if (FUNC0(ctype->family >= NFPROTO_NUMPROTO))
		return;

	FUNC1(NFNL_SUBSYS_NFTABLES);
	if (FUNC0(chain_type[ctype->family][ctype->type] != NULL)) {
		FUNC2(NFNL_SUBSYS_NFTABLES);
		return;
	}
	chain_type[ctype->family][ctype->type] = ctype;
	FUNC2(NFNL_SUBSYS_NFTABLES);
}