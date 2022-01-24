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
struct nlattr {int dummy; } ;
struct nft_set_desc {int dummy; } ;
struct nft_set {int /*<<< orphan*/  klen; } ;
struct nft_bitmap {int /*<<< orphan*/  bitmap_size; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nft_bitmap* FUNC2 (struct nft_set const*) ; 

__attribute__((used)) static int FUNC3(const struct nft_set *set,
			 const struct nft_set_desc *desc,
			 const struct nlattr * const nla[])
{
	struct nft_bitmap *priv = FUNC2(set);

	FUNC0(&priv->list);
	priv->bitmap_size = FUNC1(set->klen);

	return 0;
}