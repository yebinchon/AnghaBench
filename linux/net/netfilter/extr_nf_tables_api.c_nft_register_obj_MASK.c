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
struct nft_object_type {scalar_t__ type; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NFNL_SUBSYS_NFTABLES ; 
 scalar_t__ NFT_OBJECT_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_tables_objects ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct nft_object_type *obj_type)
{
	if (obj_type->type == NFT_OBJECT_UNSPEC)
		return -EINVAL;

	FUNC1(NFNL_SUBSYS_NFTABLES);
	FUNC0(&obj_type->list, &nf_tables_objects);
	FUNC2(NFNL_SUBSYS_NFTABLES);
	return 0;
}