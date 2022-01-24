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
struct nft_table {int /*<<< orphan*/  chains_ht; } ;
struct nft_chain {int /*<<< orphan*/  list; int /*<<< orphan*/  rhlhead; struct nft_table* table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nft_chain_ht_params ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct nft_chain *chain)
{
	struct nft_table *table = chain->table;

	FUNC0(FUNC2(&table->chains_ht, &chain->rhlhead,
				     nft_chain_ht_params));
	FUNC1(&chain->list);
}