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
struct rhashtable_compare_arg {struct nft_rhash_cmp_arg* key; } ;
struct nft_rhash_elem {int /*<<< orphan*/  ext; } ;
struct nft_rhash_cmp_arg {int /*<<< orphan*/  genmask; TYPE_1__* set; int /*<<< orphan*/  key; } ;
struct TYPE_2__ {int /*<<< orphan*/  klen; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC4(struct rhashtable_compare_arg *arg,
				const void *ptr)
{
	const struct nft_rhash_cmp_arg *x = arg->key;
	const struct nft_rhash_elem *he = ptr;

	if (FUNC0(FUNC3(&he->ext), x->key, x->set->klen))
		return 1;
	if (FUNC2(&he->ext))
		return 1;
	if (!FUNC1(&he->ext, x->genmask))
		return 1;
	return 0;
}