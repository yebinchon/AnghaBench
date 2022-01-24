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
struct nft_rbtree_elem {int /*<<< orphan*/  ext; } ;

/* Variables and functions */
 int NFT_SET_ELEM_INTERVAL_END ; 
 int /*<<< orphan*/  NFT_SET_EXT_FLAGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(const struct nft_rbtree_elem *rbe)
{
	return FUNC0(&rbe->ext, NFT_SET_EXT_FLAGS) &&
	       (*FUNC1(&rbe->ext) & NFT_SET_ELEM_INTERVAL_END);
}